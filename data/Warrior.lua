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
lib:__RegisterSpells("WARRIOR", 70300, 1, {
	COOLDOWN = {
		   6544, -- Heroic Leap
		 202168, -- Impending Victory
		 209577, -- Warbreaker (Arms artifact)
		[  6552] = "INTERRUPT", -- Pummel
		AURA = {
			PERSONAL = {
				  12292, -- Bloodbath
				  18499, -- Berserker Rage
				  23920, -- Spell Reflection
				  46924, -- Bladestorm (Fury)
				 118000, -- Dragon Roar
				 132404, -- Shield Block
				 188783, -- Might of the Vrykul (Protection artifact)
				 188923, -- Cleave
				 202164, -- Bounding Stride
				 202225, -- Furious Charge
				 209484, -- Tactical Advance (Arms artifact)
				 209706, -- Shattered Defenses (Arms artifact)
				 227847, -- Bladestorm (Arms)
				 248622, -- In for the Kill
				BURST = {
					  1719, -- Battle Cry
					107574, -- Avatar
				},
				SURVIVAL = {
					   871, -- Shield Wall
					 12975, -- Last Stand
					118038, -- Die by the Sword
					184364, -- Enraged Regeneration
					197690, -- Defensive Stance
					203524, -- Neltharion's Fury (Protection artifact)
					227744, -- Ravager
				},
			},
			HELPFUL = {
				 97463, -- Commanding Shout
				223658, -- Safeguard
			},
			HARMFUL = {
				   1160, -- Demoralizing Shout
				 115804, -- Mortal Wounds
				 205546, -- Odyn's Fury (Fury artifact)
				 208086, -- Colossus Smash
				 243016, -- Neltharions Thunder (Protection artifact)
				[  6343] = "SNARE", -- Thunder Clap (slow)
				[206891] = "UNIQUE_AURA", -- Intimidated (PvP)
				CROWD_CTRL = {
					[ 355] = "TAUNT", -- Taunt (taunt)
					[5246] = "DISORIENT", -- Intimidating Shout (disorient)
					STUN = {
						  7922, -- Warbringer Stun (stun)
						132168, -- Shockwave (stun)
						132169, -- Storm Bolt (stun)
					},
				},
			},
		},
	},
	AURA = {
		HELPFUL = {
			147833, -- Intervene
		},
		HARMFUL = {
			   772, -- Rend
			105771, -- Charge (root) -- TODO: no DR?
			115767, -- Deep Wounds
			215537, -- Trauma
			242188, -- Executioner's Precision (Arms artifact)
			SNARE = {
				  1715, -- Hamstring (slow)
				 12323, -- Piercing Howl (slow)
				236027, -- Charge (slow)
			},
		},
		PERSONAL = {
			 32216, -- Victorious
			 60503, -- Overpower!
			 85739, -- Meat Cleaver
			184362, -- Enrage
			200979, -- Sense Death (Fury artifact)
			201009, -- Juggernaut (Fury artifact)
			202289, -- Renewed Fury
			202539, -- Frenzy
			202573, -- Vengeance: Revenge
			202574, -- Vengeance: Ignore Pain
			203581, -- Dragon Scales (Protection artifact)
			206316, -- Massacre
			206333, -- Taste for Blood
			207982, -- Focused Rage (Arms)
			215570, -- Wrecking Ball
			SURVIVAL = {
				190456, -- Ignore Pain
			},
		},
	},
}, {
	-- Map aura to provider(s)
	[  7922] = 103828, -- Warbringer (stun)
	[ 32216] = { -- Victorious
		 34428, -- Victory Rush
		202168, -- Impending Victory
	},
	[ 60503] = 7384, -- Overpower! <- Overpower
	[ 85739] = 190411, -- Meat Cleaver <- Whirlwind (Fury)
	[ 97463] = 97462, -- Commanding Shout
	[105771] = { -- Charge (root)
		   100, -- Charge
		198304, -- Intercept
	},
	[115767] = 115768, -- Deep Wounds
	[115804] = 12294, -- Mortal Wounds <- Mortal Strike
	[132168] = 46968, -- Shockwave (stun)
	[132169] = 107570, -- Storm Bolt (stun)
	[132404] = 2565, -- Shield Block
	[147833] = 198304, -- Intervene <- Intercept
	[184362] = 184361, -- Enrage
	[188783] = 188778, -- Might of the Vrykul (Protection artifact)
	[188923] = 845, -- Cleave
	[197690] = 212520, -- Defensive Stance
	[200979] = 200863, -- Sense Death (Fury artifact)
	[201009] = 200875, -- Juggernaut (Fury artifact)
	[202164] = 202163, -- Bounding Stride
	[202225] = 202224, -- Furious Charge
	[202289] = 202288, -- Renewed Fury
	[202539] = 206313, -- Frenzy
	[202573] = 202572, -- Vengeance: Revenge <- Vengeance
	[202574] = 202572, -- Vengeance: Ignore Pain <- Vengeance
	[203581] = 203576, -- Dragon Scales (Protection artifact)
	[205546] = 205545, -- Odyn's Fury (Fury artifact)
	[206316] = 206315, -- Massacre
	[206333] = 100130, -- Taste for Blood <- Furious Slash
	[206891] = 205800, -- Oppressor (Protection Honor Talent)
	[208086] = { -- Colossus Smash
		167105, -- Colossus Smash
		209577, -- Warbreaker (Arms artifact)
	},
	[209484] = 209483, -- Tactical Advance (Arms artifact)
	[209706] = 209574, -- Shattered Defenses (Arms artifact)
	[215537] = 215538, -- Trauma
	[215570] = 215569, -- Wrecking Ball
	[227744] = 228920, -- Ravager
	[223658] = 198304, -- Safeguard <- Intercept
	[236027] = { -- Charge (slow)
		   100, -- Charge
		198304, -- Intercept
	},
	[242188] = 238147, -- Executioner's Precision (Arms artifact)
	[243016] = 238149, -- Neltharions Thunder (Protection artifact)
	[248622] = 248621, -- In for the Kill
}, {
	-- map aura to modified spell(s)
	[  7922] = 198304, -- Warbringer (stun) -> Intercept
	[ 85739] = { -- Meat Cleaver
		 23881, -- Bloodthirst
		184367, -- Rampage
	},
	[115767] = { -- Deep Wounds
		  6572, -- Revenge
		 20243, -- Devastate
		236282, -- Devastator
	},
	[184362] = 85288, -- Enrage -> Raging Blow
	[188783] = { -- Might of the Vrykul (Protection artifact)
		 6343, -- Thunder Clap
		23922, -- Shield Slam
	},
	[188923] = 1680, -- Cleave -> Whirlwind
	[200979] = 5308, -- Sense Death (Fury artifact) -> Execute
	[201009] = 5308, -- Juggernaut (Fury artifact) -> Execute
	[202164] = 6544, -- Bounding Stride -> Heroic Leap
	[202225] = 23881, -- Furious Charge -> Bloodthirst
	[202289] = 190456, -- Renewed Fury -> Ignore Pain
	[202539] = 100130, -- Frenzy -> Furious Slash
	[202573] = 6572, -- Vengeance: Revenge -> Revenge
	[202574] = 190456, -- Vengeance: Ignore Pain -> Ignore Pain
	[203581] = 190456, -- Dragon Scales (Protection artifact) -> Ignore Pain
	[206316] = 184367, -- Massacre -> Rampage
	[206333] = 23881, -- Taste for Blood -> Bloodthirst
	[207982] = { -- Focused Rage (Arms)
		 12294, -- Mortal Strike
		207982, -- Focused Rage
	},
	[209484] = 6544, -- Tactical Advance -> Heroic Leap (Arms artifact)
	[209706] = { -- Shattered Defenses (Arms artifact)
		 12294, -- Mortal Strike
		163201, -- Execute (Arms)
	},
	[215537] = { -- Trauma
		  1464, -- Slam
		  1680, -- Whirlwind
		163201, -- Execute
	},
	[215570] = 190411, -- Wrecking Ball -> Whirlwind
	[242188] = { -- Executioner's Precision (Arms artifact)
		 12294, -- Mortal Strike (modified)
		163201, -- Execute (Arms) (provider)
	},
	[243016] = 6343, -- Neltharions Thunder (Protection artifact) -> Thunder Clap
	[248622] = 167105, -- In for the Kill -> Colossus Smash
})
