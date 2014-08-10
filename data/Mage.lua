--[[
LibPlayerSpells-1.0 - Additional information about player spells.
(c) 2013 Adirelle (adirelle@gmail.com)

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
lib:__RegisterSpells("MAGE", "50400", 4, {
	COOLDOWN = {
		INTERRUPT = {
			2139, -- Counterspell
		},
		AURA = {
			PERSONAL = {
				BURST = {
					 12472, -- Icy Veins
					110909, -- Alter Time
				},
				SURVIVAL = {
					 45438, -- Ice Block
					115610, -- Temporal Shield
					 11426, -- Ice Barrier
				}
			}
		}
	},
	DISPEL = {
		["COOLDOWN HELPFUL"] = {
			475, -- Remove Curse
		}
	},
	RAIDBUFF = {
		[ 1459] = 'SPL_POWER CRITICAL', -- Arcane Brillance
		[61316] = 'SPL_POWER CRITICAL', -- Dalarance Brillance
		[80353] = 'BURST_HASTE',        -- Time Warp
	},
	AURA = {
		PERSONAL = {
			 79683, -- Arcane Missles!
			112965, -- Fingers of Frost
			 44549, -- Brain Freeze
			116257, -- Invoker's Energy
			  7302, -- Frost Armor
			  6117, -- Mage Armor
			 30482, -- Molten Armor
			108843, -- Blazing Speed
			108839, -- Ice Floes
		},
		HELPFUL = {
			[130] = "UNIQUE_AURA", -- Slow Fall
		},
		HARMFUL = {
			 44457, -- Living Bomb
			114923, -- Nether Tempest
			112948, -- Frost Bomb
			 11129, -- Combustion
		},
	},
}, {
	-- Map aura to provider
	[12472] = 131078,
}, {
	-- Map aura to modified spell(s)
	[ 79683] =   5143, -- Arcane Missles! => Arcane Missles
	[112965] =  30455, -- Fingers of Frost => Ice Lance
	[ 44549] =  44614, -- Brain Freeze => Frostfire Bolt
	[116257] =  12051, -- Invoker's Energy => Evocation
})
