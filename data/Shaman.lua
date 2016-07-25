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

--[[
	ISSUES:
	* Stone Bulwark and other totem buff/debuffs are ovewriten by ABA totem duration tracking
	* map auras to modifiers doesn't work, only on auras to providers
	* Echos of elements should hint the button instead of highlight it
	* Malestrom weapon should only flash flash at 5 stacks
	* Frozen power aura doesn't work (not enough diference in duration?)

	TODO:
	* Level 100 talents
	* remove "useless" commented spells or uncomment them back in
--]]

local lib = LibStub("LibPlayerSpells-1.0")
if not lib then return end
lib:__RegisterSpells("SHAMAN", 70000, 2, {
	COOLDOWN = {
		    556, -- Astral Recall
		  17364, -- Stormstrike
		  51533, -- Feral Spirit
		 198067, -- Fire Elemental
		 198103, -- Earth Elemental
		[ 57994] = "INTERRUPT", -- Wind Shear
		AURA = {
			HARMFUL = {
				CROWD_CTL = {
					51490, -- Thunderstorm (slow) (knockback)
					51514, -- Hex (incapacitate)
				},
			},
			PERSONAL = {
				[108271] = "SURVIVAL", -- Astral Shift
				  58875, -- Spirit Walk
				 187878, -- Crash Lightning
			},
		},
	},
	AURA = {
		HELPFUL = {
			546, -- Water Walking
		},
		HARMFUL = {
			188389, -- Flame Shock
			196840, -- Frost Shock (slow)
			CROWD_CTL = {
				182387, -- Earthquake (knockback)
			},
		},
		PERSONAL = {
			 2645, -- Ghost Wolf
			 6196, -- Far Sight
			77762, -- Lava Surge
		   194084, -- Flametongue
		   196834, -- Frostbrand
		   201846, -- Stormbringer
		},
	},
	DISPEL = {
		[  370] = "HARMFUL", -- Purge
		[51866] = "HELPFUL COOLDOWN", -- Cleanse Spirit
	},
}, {
	-- map aura to provider(s)
	[ 77762] = 77756, -- Lava Surge
	[182387] = 61882, -- Earthquake (knockback) <- Earthquake Totem
	[194084] = 193796, -- Flametounge
	[187878] = 187874, -- Crash Lightning
	[201846] = 201845, -- Stormbringer
}, {
	-- map aura to modified spell(s)
	[ 77762] = 51505, -- Lava Surge -> Lava Burst
	[201846] = 17364, -- Stormbringer -> Stormstrike
})
