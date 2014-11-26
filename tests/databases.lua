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

local when, any = mockagne.when, mockagne.any

local lib, G

testDatabases = {}

function testDatabases:setup()
	G = mockagne:getMock()
	G.LibStub = false
	lib = wowmock("../LibPlayerSpells-1.0.lua", G)
	G.LibStub = nil
	when(G.geterrorhandler()).thenAnswer(error)
	when(G.GetBuildInfo()).thenAnswer(0, 0, 0, 0)
	when(G.LibStub("LibPlayerSpells-1.0")).thenAnswer(lib)
	when(G.GetSpellLink(any())).thenAnswer(true)
end

local sources = {
	"Deathknight",
	"Druid",
	"Hunter",
	"Mage",
	"Monk",
	"Paladin",
	"Priest",
	"Racials",
	"Rogue",
	"Shaman",
	"Warlock",
	"Warrior",
}

for i, source in ipairs(sources) do
	local source = source
	testDatabases["test"..source] = function()
		wowmock("../data/"..source..".lua", G)
	end
end

function testDatabases:testAllAtOnce()
	for i, source in ipairs(sources) do
		wowmock("../data/"..source..".lua", G)
	end
end

os.exit(LuaUnit:Run())
