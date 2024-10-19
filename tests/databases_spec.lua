package.path = package.path .. ';./wowmock/?.lua'

local wowmock = require('wowmock')

describe('Imports', function ()
	local G, lib

	before_each(function ()
		G = mock({ C_Spell = {
			GetSpellInfo = function (id) return { spellID = id } end}
		})
		lib = wowmock('../LibPlayerSpells-1.0.lua', G)
	end)

	for _, source in next, {
		'Deathknight',
		'Demonhunter',
		'Druid',
		'Evoker',
		'Hunter',
		'Mage',
		'Monk',
		'Paladin',
		'Priest',
		'Racials',
		'Rogue',
		'Shaman',
		'Warlock',
		'Warrior',
	} do
		it(source, function ()
			G.LibStub = function (what) return lib end

			wowmock('../data/' .. source .. '.lua', G)
		end)
	end
end)
