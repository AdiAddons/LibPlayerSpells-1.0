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
lib:__RegisterSpells("ROGUE", "60100", 5, {
	COOLDOWN = {
		INTERRUPT = {
			1766, -- Kick
		},
		AURA = {
			PERSONAL = {
				 11327, -- Vanish
				 57934, -- Tricks of the Trade
				114018, -- Shroud of Concealment
				SURVIVAL = {
					  5277, -- Evasion
					 31224, -- Cloak of Shadows
					 74001, -- Combat Readiness
					 74002, -- Combat Insight (stacking buff)
				},
				BURST = {
					[13750] = "POWER_REGEN", -- Adrenaline Rush
					 51690, -- Killing Spree
					 51713, -- Shadow Dance
				},
			},
			HARMFUL = {
				[ 79140] = "BURST", -- Vendetta
				[137619] = "BURST", -- Marked for Death
			},
			HELPFUL = {
				[88611] = "INVERT_AURA SURVIVAL", -- Smoke Bomb
			},
		},
	},
	AURA = {
		PERSONAL = {
			[ 1966] = "SURVIVAL", -- Feint
			  2823, -- Deadly Poison
			  2983, -- Sprint
			  3408, -- Crippling Poison
			  5171, -- Slice and Dice
			  8679, -- Wound Poison
			 32645, -- Envenom
			 36554, -- Shadow Step
			 73651, -- Recuperate
			108211, -- Leeching Poison
			108212, -- Burst of Speed
			137573, -- Burst of Speed (talent)
			137586, -- Shuriken Toss
		},
		HARMFUL = {
			   703, -- Garrote
			  1943, -- Rupture
			 16511, -- Hemorrhage
			 26679, -- Deadly Throw
			 84617, -- Revealing Strike
			115196, -- Debilitating Poison (Shiv effect of Crippling Poison)
			122233, -- Crimson Tempest
		},
	},
	RAIDBUFF = {
		[113742] = "HASTE MULTISTRIKE", -- Swiftblade's Cunning
	},
}, {
	-- Map aura to provider
	[ 11327] =   1856, -- Vanish
	[ 88611] =  76577, -- Smoke Bomb
	[122233] = 121411, -- Crimson Tempest
	[137573] = 108212, -- Burst of Speed (talent)
}, {
	-- Map aura to modified spell(s)
	[ 51713] = 8676, -- Shadow Dance => Ambush
})
