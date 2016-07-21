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

local lib = LibStub("LibPlayerSpells-1.0")
if not lib then return end
lib:__RegisterSpells("WARRIOR", 70000, 2, {
	COOLDOWN = {
		INTERRUPT = {
			6552, -- Pummel
		},
		AURA = {
			PERSONAL = {
				  1719, -- Battle Cry
				 18499, -- Berserker Rage
				227847, -- Bladestorm (Arms)
				SURVIVAL = {
					118038, -- Die by the Sword (Arms, Fury)
				},
			},
			HELPFUL = {
				97463, -- Commanding Shout
			},
			HARMFUL = {
				208086, -- Colossus Smash (Arms)
			},
		},
	},
	AURA = {
		HELPFUL = {
		},
		HARMFUL = {
			--115804, -- Mortal Strike
			105771, -- Charge Root
		},
		PERSONAL = {
			188923, -- Cleave WirlWind
		},
	},
}, {
	-- map aura to provider(s)
	[208086] = 167105, -- Colossus Smash
	[188923] =    845, -- Cleave
	[105771] =    100, -- Charge Root
	[ 97463] =  97462, -- Commanding Shout
	--[115804] = 12294, -- Mortal Strike
}, {
	-- map aura to modified spell(s)
	[188923] = 1680, -- Cleave to WirlWind
})
