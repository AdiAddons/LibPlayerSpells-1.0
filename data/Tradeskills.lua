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

local lib = LibStub("LibPlayerSpells-1.0", true)
if not lib then return end
lib:__RegisterSpells("TRADESKILL", "50400", 1, {
	["PERSONAL COOLDOWN AURA"] = {
		-- Lifeblood (9 ranks)
		 55428,
		 55480,
		 55500,
		 55501,
		 55502,
		 55503,
		 74497,
		121279,
	},
})
