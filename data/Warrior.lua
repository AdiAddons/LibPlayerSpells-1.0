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
along with LibPlayerSpells-1.0. If not, see <http://www.gnu.org/licenses/>.
--]]

local lib = LibStub("LibPlayerSpells-1.0")
if not lib then return end
lib:__RegisterSpells("WARRIOR", 80000, 1, {
	COOLDOWN = {
		    845, -- Cleave (Arms talent)
		   6544, -- Heroic Leap
		   6572, -- Revenge (Protection)
		  23881, -- Bloodthirst (Fury)
		 152277, -- Ravager (Arms talent)
		 202168, -- Impending Victory (talent)
		 260643, -- Skullsplitter (Arms talent)
		[  6552] = "INTERRUPT", -- Pummel
		[ 23922] = "POWER_REGEN", -- Shield Slam (Protection)
		AURA = {
			HELPFUL = {
				 147833, -- Intervene (Protection)
				 223658, -- Safeguard (Protection talent)
				[  6673] = "RAIDBUFF", -- Battle Shout
				[ 97463] = "SURVIVAL", -- Rallying Cry
			},
			HARMFUL = {
				  1160, -- Demoralizing Shout (Protection)
				113344, -- Bloodbath (Fury talent)
				115804, -- Mortal Wounds (Arms)
				208086, -- Colossus Smash (Arms)
				275335, -- Punish (Protection talent)
				CROWD_CTRL = {
					[   355] = "TAUNT", -- Taunt
					[  5246] = "DISORIENT", -- Intimidating Shout
					[105771] = "ROOT", -- Charge
					STUN = {
						132168, -- Shockwave (Protection)
						132169, -- Storm Bolt (talent)
					},
				},
				SNARE = {
					  1715, -- Hamstring (Arms)
					 12323, -- Piercing Howl (Fury)
					[ 6343] = "POWER_REGEN", -- Thunder Clap (Protection)
				},
			},
			PERSONAL = {
				  7384, -- Overpower (Arms)
				 18499, -- Berserker Rage
				 23920, -- Spell Reflection (Protection)
				 46924, -- Bladestorm (Fury talent)
				 85739, -- Meat Cleaver (Fury)
				118000, -- Dragon Roar (fury talent)
				132404, -- Shield Block (Protection)
				202164, -- Bounding Stride (talent)
				202225, -- Furious Charge (Fury talent)
				227847, -- Bladestorm (Arms)
				260708, -- Sweeping Strikes (Arms)
				274818, -- Bloodbath (Fury talent)
				BURST = {
					   1719, -- Recklessness (Fury)
					 262228, -- Deadly Calm (Arms talent)
					[107574] = "POWER_REGEN", -- Avatar (Protection)(Fury/Arms talent)
				},
				SURVIVAL = {
					   871, -- Shield Wall (Protection)
					 12975, -- Last Stand (Protection)
					118038, -- Die by the Sword (Arms)
					184364, -- Enraged Regeneration (Fury)
					227744, -- Ravager (Protection talent)
					275337, -- Bolster (Protection talent)
				},
			},
		},
	},
	AURA = {
		HARMFUL = {
			   772, -- Rend (Arms talent)
			115767, -- Deep Wounds (Protection)
			215537, -- Trauma (Arms talent)
			248622, -- In for the Kill (Arms talent)
			262115, -- Deep Wounds (Arms)
		},
		PERSONAL = {
			 32216, -- Victorious
			 52437, -- Sudden Death (Arms talent)
			184362, -- Enrage (Fury)
			202539, -- Frenzy (Fury talent)
			202573, -- Vengeance: Revenge (Protection talent)
			202574, -- Vengeance: Ignore Pain (Protection talent)
			202602, -- Into the Fray (Protection talent)
			206316, -- Massacre (Fury talent)
			206333, -- Taste for Blood (Fury)
			215562, -- War Machine (Fury talent)
			215570, -- Wrecking Ball (Fury talent)
			215572, -- Frothing Berserker (Fury talent)
			262232, -- War Machine (Arms talent)
			SURVIVAL = {
				190456, -- Ignore Pain (Protection)
				197690, -- Defensive Stance (Arms talent)
			},
		},
	},
}, {
	-- Map aura to provider(s)
	[ 32216] = { -- Victorious
		 34428, -- Victory Rush (Protection/Arms)
		202168, -- Impending Victory (talent)
	},
	[ 52437] =  29725, -- Sudden Death (Arms talent)
	[ 85739] = 190411, -- Meat Cleaver <- Whirlwind (Fury)
	[ 97463] =  97462, -- Rallying Cry
	[105771] = { -- Charge
		   100, -- Charge (Fury/Arms)
		198304, -- Intercept (Protection)
	},
	[113344] =  12292, -- Bloodbath (Fury talent)
	[115767] = 115768, -- Deep Wounds (Protection)
	[115804] =  12294, -- Mortal Strike (Arms
	[132168] =  46968, -- Shockwave (Protection)
	[132169] = 107570, -- Storm Bolt (talent)
	[132404] =   2565, -- Shield Block (Protection)
	[147833] = 198304, -- Intervene (Protection) <- Intercept
	[184362] = 184361, -- Enrage (Fury)
	[197690] = 212520, -- Defensive Stance (Arms talent)
	[202164] = 202163, -- Bounding Stride (talent)
	[202225] = 202224, -- Furious Charge (Fury talent)
	[202539] = 206313, -- Frenzy (Fury talent)
	[202573] = 202572, -- Vengeance: Revenge <- Vengeance (Protectiont talent)
	[202574] = 202572, -- Vengeance: Ignore Pain <- Vengeance (Protection talent)
	[202602] = 202603, -- Into the Fray (Protection talent)
	[206316] = 206315, -- Massacre (Fury talent)
	[206333] = 100130, -- Taste for Blood <- Furious Slash
	[208086] = { -- Colossus Smash (Arms)
		167105, -- Colossus Smash (Arms)
		262161, -- Warbreaker (Arms talent)
	},
	[215537] = 215538, -- Trauma (Arms talent)
	[215562] = 215556, -- War Machine (Fury talent)
	[215570] = 215569, -- Wrecking Ball (Fury talent)
	[215572] = 215571, -- Frothing Berserker (Fury talent)
	[223658] = 223657, -- Safeguard (Protection talent)
	[227744] = 228920, -- Ravager (Protection talent)
	[248622] = 248621, -- In for the Kill (Arms talent)
	[262115] = { -- Deep Wounds (Arms)
		   845, -- Cleave (Arms talent)
		262111, -- Mastery: Deep Wounds (Arms)
	},
	[262232] = 262231, -- War Machine (Arms talent)
	[274818] =  12292, -- Bloodbath (Fury talent)
	[275335] = 275334, -- Punish (Protection talent)
}, {
	-- map aura to modified spell(s)
	[  7384] =  12294, -- Overpower -> Mortal Strike (Arms)
	[ 52437] = 163201, -- Sudden Death -> Execute (Arms talent)
	[ 85739] = { -- Meat Cleaver (Fury)
		 23881, -- Bloodthirst (Fury)
		184367, -- Rampage (Fury)
	},
	[115767] = { -- Deep Wounds (Protection)
		  6572, -- Revenge (Protection)
		 20243, -- Devestate (Protection)
		236279, -- Devastator (Protection talent)
	},
	[184362] =  85288, -- Enrage -> Raging Blow (Fury)
	[202164] =   6544, -- Bounding Stride -> Heroic Leap (talent)
	[202225] =  23881, -- Furious Charge -> Bloodthirst (Fury talent)
	[202539] = 100130, -- Frenzy -> Furious Slash (Fury talent)
	[202573] =   6572, -- Vengeance: Revenge -> Revenge (Protection talent)
	[202574] = 190456, -- Vengeance: Ignore Pain (Protection talent) -> Ignore Pain
	[206316] = 184367, -- Massacre -> Rampage (Fury talent)
	[206333] =  23881, -- Taste for Blood -> Bloodthirst (Fury)
	[215537] = { -- Trauma (Arms talent)
		  1464, -- Slam (Arms)
		  1680, -- Whirlwind (Arms)
		163201, -- Execute (Arms)
	},
	[215570] = 190411, -- Wrecking Ball -> Whirlwind (Fury talent)
	[223658] = 198304, -- Safeguard (Protection talent) -> Intercept
	[248622] = {
		167105, -- In for the Kill -> Colossus Smash (Arms talent)
		262161, -- In for the Kill -> Warbreaker (Arms talent)
	},
	[275335] =  23922, -- Punish (Protection talent) -> Shield Slam
})
