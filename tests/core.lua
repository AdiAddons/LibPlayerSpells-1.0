--[[
LibPlayerSpells-1.0 - Additional information about player spells.
(c) 2013-2021 Adirelle (adirelle@gmail.com)

This file is part of LibPlayerSpells-1.0.

LibPlayerSpells-1.0 is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

LibPlayerSpells-1.0 is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with LibPlayerSpells-1.0.  If not, see <http://www.gnu.org/licenses/>.
--]]

package.path = package.path .. ";./wowmock/?.lua"
local lu = require('luaunit')
local mockagne = require('mockagne')
local wowmock = require('wowmock')
local bit = require('bit')

local when, any, verify = mockagne.when, mockagne.any, mockagne.verify

local bor, tohex = bit.bor, bit.tohex

local lib, G

LibStub = false
AdiDebug = false

local function setup()
	G = mockagne:getMock()
	lib = wowmock("../LibPlayerSpells-1.0.lua", G)
end

testRegisterSpells = { setup = setup }

function testRegisterSpells:test_unknown_category()
	lu.assertEquals(pcall(lib.__RegisterSpells, lib, "foobar", 0, 0, {}), false)
end

function testRegisterSpells:test_new_data()
	lib:__RegisterSpells("HUNTER", 50000, 1, {})
	local _, patch, rev = lib:GetVersionInfo("HUNTER")
	lu.assertEquals(patch, 50000)
	lu.assertEquals(rev, 1)
end

function testRegisterSpells:test_newer_revision()
	lib:__RegisterSpells("HUNTER", 50000, 1, {})
	lib:__RegisterSpells("HUNTER", 50000, 2, {})
	local _, patch, rev = lib:GetVersionInfo("HUNTER")
	lu.assertEquals(patch, 50000)
	lu.assertEquals(rev, 2)
end

function testRegisterSpells:test_newer_patch()
	lib:__RegisterSpells("HUNTER", 50000, 1, {})
	lib:__RegisterSpells("HUNTER", 60000, 1, {})
	local _, patch, rev = lib:GetVersionInfo("HUNTER")
	lu.assertEquals(patch, 60000)
	lu.assertEquals(rev, 1)
end

function testRegisterSpells:test_older_patch()
	lib:__RegisterSpells("HUNTER", 60000, 1, {})
	lib:__RegisterSpells("HUNTER", 50000, 2, {})
	local _, patch, rev = lib:GetVersionInfo("HUNTER")
	lu.assertEquals(patch, 60000)
	lu.assertEquals(rev, 1)
end

function testRegisterSpells:test_older_revision()
	lib:__RegisterSpells("HUNTER", 50000, 2, {})
	lib:__RegisterSpells("HUNTER", 50000, 1, {})
	local _, patch, rev = lib:GetVersionInfo("HUNTER")
	lu.assertEquals(patch, 50000)
	lu.assertEquals(rev, 2)
end

function testRegisterSpells:test_provider_inconsistency()
	local success, msg = pcall(lib.__RegisterSpells, lib, "HUNTER", 1, 1, {}, {[5] = 6})
	lu.assertEquals(success, true)
	lu.assertEquals(msg, 1)
end

function testRegisterSpells:test_modifier_inconsistency()
	local success, msg = pcall(lib.__RegisterSpells, lib, "HUNTER", 1, 1, {}, {}, {[5] = 6})
	lu.assertEquals(success, true)
	lu.assertEquals(msg, 1)
end

function testRegisterSpells:test_unknown_flag()
	local success, msg = pcall(lib.__RegisterSpells, lib, "HUNTER", 1, 1, {[4] = "FOO"})
	lu.assertEquals(success, true)
	lu.assertEquals(msg, 1)
end

function testRegisterSpells:test_unknown_spell()
	when(G.GetSpellInfo(4)).thenAnswer(false)
	local success, msg = pcall(lib.__RegisterSpells, lib, "HUNTER", 1, 1, { [4] = "AURA" })
	lu.assertEquals(success, true)
	lu.assertEquals(msg, 1)
	verify(G.GetSpellInfo(4))
end

function testRegisterSpells:test_consistent_data()
	when(G.GetSpellInfo(any())).thenAnswer("link")
	lib:__RegisterSpells("HUNTER", 1, 1, {[4] = "AURA", [5] = "AURA"}, {[4] = 8}, {[5] = 6})
end

function testRegisterSpells:test_known_spell()
	when(G.GetSpellInfo(4)).thenAnswer("link")
	lib:__RegisterSpells("HUNTER", 1, 1, { [4] = "AURA" })
	verify(G.GetSpellInfo(4))
end

function testRegisterSpells:test_key_id_value_flag()
	when(G.GetSpellInfo(4)).thenAnswer("link")
	lib:__RegisterSpells("HUNTER", 1, 1, { [4] = "AURA" })
	lu.assertEquals(lib.__categories.HUNTER[4], bor(lib.constants.AURA, lib.constants.HUNTER))
end

function testRegisterSpells:test_spell_list()
	when(G.GetSpellInfo(any())).thenAnswer("link")
	lib:__RegisterSpells("HUNTER", 1, 1, { AURA = { 4, 5 } })
	local db, c = lib.__categories.HUNTER, lib.constants
	lu.assertEquals(db[4], bor(c.AURA, c.HUNTER))
	lu.assertEquals(db[5], bor(c.AURA, c.HUNTER))
end

function testRegisterSpells:test_nested()
	when(G.GetSpellInfo(any())).thenAnswer("link")
	lib:__RegisterSpells("HUNTER", 1, 1, {
		AURA = {
			4,
			[5] = "HARMFUL",
			HELPFUL = {
				6,
				[7] = "COOLDOWN"
			}
		}
	})
	local db, c = lib.__categories.HUNTER, lib.constants
	lu.assertEquals(db[4], bor(c.AURA, c.HUNTER))
	lu.assertEquals(db[5], bor(c.AURA, c.HUNTER, c.HARMFUL))
	lu.assertEquals(db[6], bor(c.AURA, c.HUNTER, c.HELPFUL))
	lu.assertEquals(db[7], bor(c.AURA, c.HUNTER, c.HELPFUL, c.COOLDOWN))
end

function testRegisterSpells:test_multipart_string()
	when(G.GetSpellInfo(4)).thenAnswer("link")
	lib:__RegisterSpells("HUNTER", 1, 1, { [4] = "HELPFUL AURA" })
	local db, c = lib.__categories.HUNTER, lib.constants
	lu.assertEquals(db[4], bor(c.AURA, c.HELPFUL, c.HUNTER))
end

function testRegisterSpells:test_invalid_data()
	local success = pcall(lib.__RegisterSpells, lib, "HUNTER", 1, 1, { [4] = function() end })
	lu.assertEquals(success, false)
end

function testRegisterSpells:test_database_conflict()
	when(G.GetSpellInfo(4)).thenAnswer("link")
	when(G.GetBuildInfo()).thenAnswer({4,4,4,4})
	lib:__RegisterSpells("HUNTER", 1, 1, { [4] = "AURA" })
	local msg
	xpcall(
		function() lib:__RegisterSpells("SHAMAN", 1, 1, { [4] = "HELPFUL" }) end,
		function(m) msg = m end
	)
	lu.assertEquals(msg == nil, true)
end

function testRegisterSpells:test_crowd_ctrl()
	when(G.GetSpellInfo(any())).thenAnswer("link")
	lib:__RegisterSpells("HUNTER", 1, 1, { [4] = "AURA HARMFUL CROWD_CTRL STUN" })
	local c = lib.constants
	lu.assertEquals(lib.__specials.CROWD_CTRL[4], c.STUN)
	lu.assertEquals(lib.__categories.HUNTER[4], bor(c.HARMFUL, c.AURA, c.HUNTER, c.CROWD_CTRL))
end

function testRegisterSpells:test_dispel()
	when(G.GetSpellInfo(any())).thenAnswer("link")
	lib:__RegisterSpells("HUNTER", 1, 1, { [4] = "DISPEL HARMFUL MAGIC" })
	local c = lib.constants
	lu.assertEquals(lib.__specials.DISPEL[4], c.MAGIC)
	lu.assertEquals(lib.__categories.HUNTER[4], bor(c.DISPEL, c.HARMFUL, c.HUNTER))
end

testFilterParsing = { setup = setup }

function testFilterParsing:test_empty()
	lu.assertEquals(lib.__filters[""], 0)
end

function testFilterParsing:test_single_values()
	for name, value in pairs(lib.constants) do
		lu.assertEquals(tohex(lib.__filters[name]), tohex(value))
	end
end

function testFilterParsing:test_combination()
	local c = lib.constants
	lu.assertEquals(lib.__filters["HUNTER AURA"], bor(c.HUNTER, c.AURA))
	lu.assertEquals(lib.__filters["AURA HUNTER"], bor(c.HUNTER, c.AURA))
end

testFlagTester = { setup = setup }

for i, data in ipairs{
	{ "HUNTER", "", "", "HUNTER", true },
	{ "HUNTER", "", "", "SHAMAN", false },
	{ "HUNTER", "", "", "HUNTER AURA", true },
	{ "HUNTER SHAMAN", "", "", "HUNTER", true },
	{ "HUNTER SHAMAN", "", "", "SHAMAN", true },
	{ "HUNTER SHAMAN", "", "", "DRUID", false },
	{ "HUNTER", "AURA", "", "HUNTER AURA", true },
	{ "HUNTER", "AURA", "", "HUNTER", false },
	{ "HUNTER", "AURA", "", "SHAMAN", false },
	{ "HUNTER SHAMAN", "AURA", "", "SHAMAN AURA COOLDOWN", true },
	{ "HUNTER", "AURA", "COOLDOWN", "HUNTER AURA", true },
	{ "HUNTER", "AURA", "COOLDOWN", "AURA", false },
	{ "HUNTER", "AURA", "COOLDOWN", "AURA COOLDOWN", false },
	{ "HUNTER", "AURA", "COOLDOWN", "HUNTER COOLDOWN", false },
	{ "HUNTER", "", "COOLDOWN", "HUNTER", true },
	{ "HUNTER", "", "COOLDOWN", "HUNTER AURA", true },
	{ "HUNTER", "", "COOLDOWN", "AURA", false },
	{ "HUNTER", "", "COOLDOWN", "AURA COOLDOWN", false },
	{ "HUNTER", "", "COOLDOWN", "HUNTER COOLDOWN", false },
} do
	local anyOf, include, exclude, value, expected = unpack(data)
	testFlagTester["test_"..i] = function()
		lu.assertEquals(lib:GetFlagTester(anyOf, include, exclude)(lib.__filters[value]), expected)
	end
end

os.exit(lu.LuaUnit.run())
