--[[
LibPlayerSpells-1.0 - Additional information about player spells.
(c) 2013-2014 Adirelle (adirelle@gmail.com)

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
local LuaUnit = require('luaunit')
local mockagne = require('mockagne')
local wowmock = require('wowmock')
local bit = require('bit')

local when, any, verify = mockagne.when, mockagne.any, mockagne.verify

local bor, tohex = bit.bor, bit.tohex

local lib, G

LibStub = false

local function setup()
	G = mockagne:getMock()
	lib = wowmock("../LibPlayerSpells-1.0.lua", G)
end

testRegisterSpells = { setup = setup }

function testRegisterSpells:test_unknown_category()
	assertEquals(pcall(lib.__RegisterSpells, lib, "foobar", 0, 0, {}), false)
end

function testRegisterSpells:test_new_data()
	lib:__RegisterSpells("HUNTER", 50000, 1, {})
	local _, patch, rev = lib:GetVersionInfo("HUNTER")
	assertEquals(patch, 50000)
	assertEquals(rev, 1)
end

function testRegisterSpells:test_newer_revision()
	lib:__RegisterSpells("HUNTER", 50000, 1, {})
	lib:__RegisterSpells("HUNTER", 50000, 2, {})
	local _, patch, rev = lib:GetVersionInfo("HUNTER")
	assertEquals(patch, 50000)
	assertEquals(rev, 2)
end

function testRegisterSpells:test_newer_patch()
	lib:__RegisterSpells("HUNTER", 50000, 1, {})
	lib:__RegisterSpells("HUNTER", 60000, 1, {})
	local _, patch, rev = lib:GetVersionInfo("HUNTER")
	assertEquals(patch, 60000)
	assertEquals(rev, 1)
end

function testRegisterSpells:test_older_patch()
	lib:__RegisterSpells("HUNTER", 60000, 1, {})
	lib:__RegisterSpells("HUNTER", 50000, 2, {})
	local _, patch, rev = lib:GetVersionInfo("HUNTER")
	assertEquals(patch, 60000)
	assertEquals(rev, 1)
end

function testRegisterSpells:test_older_revision()
	lib:__RegisterSpells("HUNTER", 50000, 2, {})
	lib:__RegisterSpells("HUNTER", 50000, 1, {})
	local _, patch, rev = lib:GetVersionInfo("HUNTER")
	assertEquals(patch, 50000)
	assertEquals(rev, 2)
end

function testRegisterSpells:test_provider_inconsistency()
	local success, msg = pcall(lib.__RegisterSpells, lib, "HUNTER", 1, 1, {}, {[5] = 6})
	assertEquals(success, false)
end

function testRegisterSpells:test_modifier_inconsistency()
	local success, msg = pcall(lib.__RegisterSpells, lib, "HUNTER", 1, 1, {}, {}, {[5] = 6})
	assertEquals(success, false)
end

function testRegisterSpells:test_consistent_data()
	when(G.GetSpellLink(any())).thenAnswer("link")
	lib:__RegisterSpells("HUNTER", 1, 1, {[4] = "AURA", [5] = "AURA"}, {[4] = 8}, {[5] = 6})
end

function testRegisterSpells:test_unknown_flag()
	local success, msg = pcall(lib.__RegisterSpells, lib, "HUNTER", 1, 1, {[4] = "FOO"})
	assertEquals(success, false)
end

function testRegisterSpells:test_unknown_spell()
	when(G.GetSpellLink(4)).thenAnswer(false)
	local success, msg = pcall(lib.__RegisterSpells, lib, "HUNTER", 1, 1, { [4] = "AURA" })
	assertEquals(success, false)
	verify(G.GetSpellLink(4))
end

function testRegisterSpells:test_known_spell()
	when(G.GetSpellLink(4)).thenAnswer("link")
	lib:__RegisterSpells("HUNTER", 1, 1, { [4] = "AURA" })
	verify(G.GetSpellLink(4))
end

function testRegisterSpells:test_key_id_value_flag()
	when(G.GetSpellLink(4)).thenAnswer("link")
	lib:__RegisterSpells("HUNTER", 1, 1, { [4] = "AURA" })
	assertEquals(lib.__categories.HUNTER[4], bor(lib.constants.AURA, lib.constants.HUNTER))
end

function testRegisterSpells:test_spell_list()
	when(G.GetSpellLink(any())).thenAnswer("link")
	lib:__RegisterSpells("HUNTER", 1, 1, { AURA = { 4, 5 } })
	local db, c = lib.__categories.HUNTER, lib.constants
	assertEquals(db[4], bor(c.AURA, c.HUNTER))
	assertEquals(db[5], bor(c.AURA, c.HUNTER))
end

function testRegisterSpells:test_nested()
	when(G.GetSpellLink(any())).thenAnswer("link")
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
	assertEquals(db[4], bor(c.AURA, c.HUNTER))
	assertEquals(db[5], bor(c.AURA, c.HUNTER, c.HARMFUL))
	assertEquals(db[6], bor(c.AURA, c.HUNTER, c.HELPFUL))
	assertEquals(db[7], bor(c.AURA, c.HUNTER, c.HELPFUL, c.COOLDOWN))
end

function testRegisterSpells:test_multipart_string()
	when(G.GetSpellLink(4)).thenAnswer("link")
	lib:__RegisterSpells("HUNTER", 1, 1, { [4] = "HELPFUL AURA" })
	local db, c = lib.__categories.HUNTER, lib.constants
	assertEquals(db[4], bor(c.AURA, c.HELPFUL, c.HUNTER))
end

function testRegisterSpells:test_invalid_data()
	local success, msg = pcall(lib.__RegisterSpells, lib, "HUNTER", 1, 1, { [4] = function() end })
	assertEquals(success, false)
end

function testRegisterSpells:test_database_conflict()
	when(G.GetSpellLink(4)).thenAnswer("link")
	when(G.GetBuildInfo()).thenAnswer({4,4,4,4})
	lib:__RegisterSpells("HUNTER", 1, 1, { [4] = "AURA" })
	local msg
	xpcall(
		function() lib:__RegisterSpells("SHAMAN", 1, 1, { [4] = "HELPFUL" }) end,
		function(m) msg = m end
	)
	assertEquals(msg == nil, false)
end

--[[ Ignored until I figure out how to work around luabitop using signed 32-bit integers.
-- WoW embeds bitlib, which uses unsigned integers, whereas I only have luabitop handy.
function testRegisterSpells:test_raidbuff()
	when(G.GetSpellLink(any())).thenAnswer("link")
	lib:__RegisterSpells("HUNTER", 1, 1, { [4] = "RAIDBUFF STAMINA" })
	local c, bor = lib.constants, bor
	assertEquals(lib.__specials.RAIDBUFF[4], c.STAMINA)
	assertEquals(lib.__categories.HUNTER[4], bor(c.HELPFUL, c.UNIQUE_AURA, c.AURA, c.HUNTER))
end
]]

testFilterParsing = { setup = setup }

function testFilterParsing:test_empty()
	assertEquals(lib.__filters[""], 0)
end

function testFilterParsing:test_single_values()
	for name, value in pairs(lib.constants) do
		assertEquals(tohex(lib.__filters[name]), tohex(value))
	end
end

function testFilterParsing:test_combination()
	local c = lib.constants
	assertEquals(lib.__filters["HUNTER AURA"], bor(c.HUNTER, c.AURA))
	assertEquals(lib.__filters["AURA HUNTER"], bor(c.HUNTER, c.AURA))
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
		assertEquals(lib:GetFlagTester(anyOf, include, exclude)(lib.__filters[value]), expected)
	end
end

os.exit(LuaUnit:Run())
