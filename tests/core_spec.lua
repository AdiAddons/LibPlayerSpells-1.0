package.path = package.path .. ';./wowmock/?.lua'

local wowmock = require('wowmock')

describe('Core', function ()
	local G, lib

	before_each(function ()
		G = mock({ C_Spell = {
			GetSpellInfo = function (id) return { spellID = id } end}
		})
		lib = wowmock('../LibPlayerSpells-1.0.lua', G)
	end)

	it('throws on unsupported spell source', function ()
		assert.errors(function () lib:__RegisterSpells('foobar', 0, 0, {}) end)
	end)

	it('adds new data', function ()
		local _, patch, rev = lib:GetVersionInfo('HUNTER')
		assert.equals(0, patch)
		assert.equals(0, rev)

		lib:__RegisterSpells('HUNTER', 50000, 1, {})

		_, patch, rev = lib:GetVersionInfo('HUNTER')
		assert.equals(50000, patch)
		assert.equals(1, rev)
	end)

	it('adds newer revision', function ()
		lib:__RegisterSpells('HUNTER', 50000, 1, {})
		lib:__RegisterSpells('HUNTER', 50000, 2, {})

		local _, patch, rev = lib:GetVersionInfo('HUNTER')
		assert.equals(50000, patch)
		assert.equals(2, rev)
	end)

	it('skips older revision', function ()
		lib:__RegisterSpells('HUNTER', 50000, 2, {})
		lib:__RegisterSpells('HUNTER', 50000, 1, {})

		local _, patch, rev = lib:GetVersionInfo('HUNTER')
		assert.equals(50000, patch)
		assert.equals(2, rev)
	end)

	it('adds newer patch', function ()
		lib:__RegisterSpells('HUNTER', 50000, 1, {})
		lib:__RegisterSpells('HUNTER', 60000, 1, {})

		local _, patch, rev = lib:GetVersionInfo('HUNTER')
		assert.equals(60000, patch)
		assert.equals(1, rev)
	end)

	it('skips older patch', function ()
		lib:__RegisterSpells('HUNTER', 60000, 1, {})
		lib:__RegisterSpells('HUNTER', 50000, 2, {})

		local _, patch, rev = lib:GetVersionInfo('HUNTER')
		assert.equals(60000, patch)
		assert.equals(1, rev)
	end)

	it('ignores provider inconsistency', function ()
		lib:__RegisterSpells('HUNTER', 1, 1, {}, {[5] = 6})

		assert.is_nil(lib:GetSpellInfo(5))
	end)

	it('ignores modifier inconsistency', function ()
		lib:__RegisterSpells('HUNTER', 1, 1, {}, {}, {[5] = 6})

		assert.is_nil(lib:GetSpellInfo(5))
	end)

	it('throws on invalid filter', function ()
		assert.errors(function ()
			lib:__RegisterSpells('HUNTER', 1, 1, {[4] = 'FOO'})
		end)
	end)

	it('throws on invalid spell definition', function ()
		assert.errors(function ()
			lib:__RegisterSpells('HUNTER', 1, 1, {[4] = function () end})
		end)
	end)

	it('ignores unknown spells', function ()
		G.C_Spell.GetSpellInfo = function (_id) return nil end
		spy.on(G.C_Spell, 'GetSpellInfo')
		lib = wowmock('../LibPlayerSpells-1.0.lua', G)

		lib:__RegisterSpells('HUNTER', 1, 1, {[4] = 'AURA'})

		assert.spy(G.C_Spell.GetSpellInfo).was_called_with(4)
		assert.is_nil(lib:GetSpellInfo(4))
	end)

	it('imports known spell', function ()
		lib:__RegisterSpells('HUNTER', 1, 1, {[4] = 'AURA'})

		assert.spy(G.C_Spell.GetSpellInfo).was_called_with(4)
		assert.is_not_nil(lib:GetSpellInfo(4))
	end)

	it('spell is implictly its own provider', function ()
		lib:__RegisterSpells('HUNTER', 1, 1, {[4] = 'AURA'})

		local _, providers = lib:GetSpellInfo(4)

		assert.equals(4, providers)
	end)

	it('explicit spell provider overrides the implicit one', function ()
		lib:__RegisterSpells('HUNTER', 1, 1, {[4] = 'AURA'}, {[4] = 5})

		local _, providers = lib:GetSpellInfo(4)

		assert.equals(5, providers)
	end)

	it('spell can have multiple spell providers', function ()
		lib:__RegisterSpells('HUNTER', 1, 1, {[4] = 'AURA'}, {[4] = {5, 6}})

		local _, providers = lib:GetSpellInfo(4)

		assert.same({5, 6}, providers)
	end)

	it('spell is implicitly its own modifier', function ()
		lib:__RegisterSpells('HUNTER', 1, 1, {[4] = 'AURA'})

		local _, _, modified = lib:GetSpellInfo(4)

		assert.equals(4, modified)
	end)

	it('explicit modified spell overrides the implicit one', function ()
		lib:__RegisterSpells('HUNTER', 1, 1, {[4] = 'AURA'}, {}, {[4] = 5})

		local _, _, modified = lib:GetSpellInfo(4)

		assert.equals(5, modified)
	end)

	it('spell can modify multiple spells', function ()
		lib:__RegisterSpells('HUNTER', 1, 1, {[4] = 'AURA'}, {}, {[4] = {5, 6}})

		local _, _, modified = lib:GetSpellInfo(4)

		assert.same({5, 6}, modified)
	end)

	it('spell flag mask contains source and category', function ()
		lib:__RegisterSpells('HUNTER', 1, 1, {[4] = 'AURA'})
		local hunterAura = bit.bor(lib.constants.AURA, lib.constants.HUNTER)

		assert.equals(hunterAura, lib:GetSpellInfo(4))
	end)

	it('imports multiple spells by category', function ()
		lib:__RegisterSpells('HUNTER', 1, 1, {AURA = {4, 5}})
		local hunterAura = bit.bor(lib.constants.AURA, lib.constants.HUNTER)

		assert.equals(hunterAura, lib:GetSpellInfo(4))
		assert.equals(hunterAura, lib:GetSpellInfo(5))
	end)

	it('imports spells with nested categories', function ()
		lib:__RegisterSpells('HUNTER', 1, 1, {
			AURA = {
				4,
				[5] = 'HARMFUL',
				HELPFUL = {
					6,
					[7] = 'COOLDOWN',
				},
			},
		})
		local c = lib.constants

		-- TODO: maybe lib:GetFlagTester?
		assert.equals(bit.bor(c.HUNTER, c.AURA), lib:GetSpellInfo(4))
		assert.equals(bit.bor(c.HUNTER, c.AURA, c.HARMFUL), lib:GetSpellInfo(5))
		assert.equals(bit.bor(c.HUNTER, c.AURA, c.HELPFUL), lib:GetSpellInfo(6))
		assert.equals(bit.bor(c.HUNTER, c.AURA, c.HELPFUL, c.COOLDOWN), lib:GetSpellInfo(7))
	end)

	it('imports spells with multipart categories', function ()
		lib:__RegisterSpells('HUNTER', 1, 1, {[4] = 'HELPFUL AURA'})
		local c = lib.constants

		assert.equals(bit.bor(c.HUNTER, c.AURA, c.HELPFUL), lib:GetSpellInfo(4))
	end)

	it('imports same spell on different classes', function ()
		lib:__RegisterSpells('HUNTER', 1, 1, {[4] = 'HELPFUL AURA'})
		lib:__RegisterSpells('SHAMAN', 1, 1, {[4] = 'AURA'})
		local db, c = lib.__categories, lib.constants

		local flags, _, _, _, sources = lib:GetSpellInfo(4)

		assert.equals(bit.bor(c.HUNTER, c.AURA, c.HELPFUL), db.HUNTER[4])
		assert.equals(bit.bor(c.SHAMAN, c.AURA), db.SHAMAN[4])
		assert.equals(bit.bor(c.HUNTER, c.SHAMAN, c.AURA, c.HELPFUL), flags)
		assert.equals('HUNTER SHAMAN', sources)
	end)

	it('imports crowd control special category', function ()
		lib:__RegisterSpells('HUNTER', 1, 1, {[4] = 'AURA HARMFUL CROWD_CTRL STUN'})
		local c = lib.constants

		local flags, _, _, cc = lib:GetSpellInfo(4)

		assert.equals(bit.bor(c.HUNTER, c.AURA, c.HARMFUL, c.CROWD_CTRL), flags)
		assert.equals(c.STUN, cc)
	end)

	it('imports dispel special category', function ()
		lib:__RegisterSpells('HUNTER', 1, 1, {[4] = 'DISPEL HARMFUL MAGIC'})
		local c = lib.constants

		local flags, _, _, _, _, dispel = lib:GetSpellInfo(4)

		assert.equals(bit.bor(c.HUNTER, c.HARMFUL, c.DISPEL), flags)
		assert.equals(c.MAGIC, dispel)
	end)

	for i, data in ipairs{
		{ 'HUNTER', '', '', 'HUNTER', true },
		{ 'HUNTER', '', '', 'SHAMAN', false },
		{ 'HUNTER', '', '', 'HUNTER AURA', true },
		{ 'HUNTER SHAMAN', '', '', 'HUNTER', true },
		{ 'HUNTER SHAMAN', '', '', 'SHAMAN', true },
		{ 'HUNTER SHAMAN', '', '', 'DRUID', false },
		{ 'HUNTER', 'AURA', '', 'HUNTER AURA', true },
		{ 'HUNTER', 'AURA', '', 'HUNTER', false },
		{ 'HUNTER', 'AURA', '', 'SHAMAN', false },
		{ 'HUNTER SHAMAN', 'AURA', '', 'SHAMAN AURA COOLDOWN', true },
		{ 'HUNTER', 'AURA', 'COOLDOWN', 'HUNTER AURA', true },
		{ 'HUNTER', 'AURA', 'COOLDOWN', 'AURA', false },
		{ 'HUNTER', 'AURA', 'COOLDOWN', 'AURA COOLDOWN', false },
		{ 'HUNTER', 'AURA', 'COOLDOWN', 'HUNTER COOLDOWN', false },
		{ 'HUNTER', '', 'COOLDOWN', 'HUNTER', true },
		{ 'HUNTER', '', 'COOLDOWN', 'HUNTER AURA', true },
		{ 'HUNTER', '', 'COOLDOWN', 'AURA', false },
		{ 'HUNTER', '', 'COOLDOWN', 'AURA COOLDOWN', false },
		{ 'HUNTER', '', 'COOLDOWN', 'HUNTER COOLDOWN', false },
	} do
		local anyOf, include, exclude, value, expected = unpack(data)

		it('FlagTester ' .. i, function ()
			local flagTester = lib:GetFlagTester(anyOf, include, exclude)
			local filter = lib.__filters[value]

			assert.equals(expected, flagTester(filter))
		end)
	end
end)
