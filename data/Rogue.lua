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
lib:__RegisterSpells("ROGUE", "50400", 4, {
	COOLDOWN = {
		INTERRUPT = {
			1766, -- Kick
		},
		AURA = {
			PERSONAL = {
				 57934, -- Tricks of the Trade
				114018, -- Shroud of Concealment
				 11327, -- Vanish
				SURVIVAL = {
					  5277, -- Evasion
					 31224, -- Cloak of Shadows
					 74002, -- Combat Insight (stacking buff)
					113613, -- Symbiosis: Growl
				},
				BURST = {
					[13750] = "POWER_REGEN", -- Adrenaline Rush
					 51690, -- Killing Spree
					121471, -- Shadow Blades
					 51713, -- Shadow Dance
				},
			},
			HARMFUL = {
				[79140] = "BURST", -- Vendetta
			},
			HELPFUL = {
				[88611] = "INVERT_AURA", -- Smoke Bomb TODO: does not seem to work
			},
		},
	},
	AURA = {
		PERSONAL = {
			  2823, -- Deadly Poison
			  8679, -- Wound Poison
			  3408, -- Crippling Poison
			  5761, -- Mind-numbling Poison
			108211, -- Leeching Poison
			108215, -- Paralytic Poison
			  5171, -- Slice and Dice
			  2983, -- Sprint
			 73651, -- Recuperate
			 36554, -- Shadow Step
			108212, -- Burst of Speed
			114842, -- Shadow Walk
			137586, -- Shuriken Toss
			 32645, -- Envenom
			[1966] = "SURVIVAL", -- Feint
		},
		HARMFUL = {
			 84617, -- Revealing Strike
			122233, -- Crimson Tempest
			  1943, -- Rupture
			 26679, -- Deadly Throw
			   703, -- Garrote
			 89775, -- Hemorrhage
			115196, -- Debilitating Poison (Shiv effect of Crippling Poison)
			115194, -- Mind Paralysis (Shiv effect of Mind-numbling Poison)
			115197, -- Partial Paralysis (Shiv effect of Paralytic Poison) NOTE: has a DRData entry but is not currently displayed on Shiv
			113953, -- Paralysis (4 stacks effect from Paralytic Poison) NOTE: has a DRData entry but is not currently displayed on Shiv
		},
	},
	RAIDBUFF = {
		[113742] = 'ATK_SPEED', -- Swiftblade's Cunning
	},
	-- special
	[5938] = "DISPEL HARMFUL", -- Shiv
}, {
	-- Map aura to provider
	[122233] = 121411, -- Crimson Tempest
	[ 11327] =   1856, -- Vanish
	[137586] = 114014, -- Shuriken Toss
	[ 74002] =  74001, -- Combat Insight <= Combat Readiness
	[ 88611] =  76577, -- Smoke Bomb
	[ 89775] =  16511, -- Hemorrhage
	[115196] =   5938, -- Debilitating Poison <= Shiv
	[115194] =   5938, -- Mind Paralysis <= Shiv
	[115197] =   5938, -- Partial Paralysis <= Shiv
	[113953] =   5938, -- Paralysis <= Shiv (the 4 stacks effect from Paralytic Poison is better than the Shiv effect (stun vs root), so display it on Shiv)
}, {
	-- Map aura to modified spell(s)
	[51713] = 8676, -- Shadow Dance => Ambush
	[121471] = { -- Shadow Blades =>
		 1752, -- Sinister Strike
		84617, -- Revealing Strike
		51723, -- Fan of Knives
		 1833, -- Cheap Shot
		 8676, -- Ambush
		  703, -- Garrote
	},
})

-- TODO: --
--[[
	Premeditation (this applies a hidden aura?)
]]
