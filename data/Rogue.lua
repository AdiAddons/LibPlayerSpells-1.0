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
lib:__RegisterSpells("ROGUE", 70300, 1, {
	COOLDOWN = {
		   1725, -- Distract
		 195457, -- Grappling Hook
		[  1766] = "INTERRUPT", -- Kick
		[200806] = "BURST", -- Exsanguinate
		AURA = {
			[ 57934] = "HELPFUL", -- Tricks of the Trade
			[199740] = "PET INVERT_AURA", -- Bribe
			HARMFUL = {
				   703, -- Garrote
				  1330, -- Garrote - Silence
				154953, -- Internal Bleeding
				192759, -- Kingsbane (Assassination artifact)
				245389, -- Toxic Blade
				BURST = {
					 79140, -- Vendetta
					137619, -- Marked for Death
				},
				CROWD_CTRL = {
					[2094] = "DISORIENT", -- Blind (disorient)
					INCAPACITATE = {
						  1776, -- Gouge (incapacitate)
						199743, -- Parley (incapacitate)
					},
					STUN = {
						   408, -- Kidney Shot (stun)
						199804, -- Between the Eyes (stun)
					},
				},
				SNARE = {
					185778, -- Shellshocked (slow)
					209786, -- Goremaw's Bite (Subtlety artifact) (slow)
				},
			},
			PERSONAL = {
				   2983, -- Sprint
				  13877, -- Blade Flurry
				  36554, -- Shadowstep
				 115192, -- Subterfuge
				 152150, -- Death from Above
				 185311, -- Crimson Vial
				 185422, -- Shadow Dance
				 192432, -- From the Shadows (Assassination artifact)
				 226364, -- Evasion (Assassination artifact)
				 240525, -- Dense Concoction (Assassination artifact)
				 240837, -- Loaded Dice (Outlaw artifact)
				 242705, -- Feeding Frenzy (Subtlety artifact)
				[202665] = "INVERT_AURA", -- Curse of the Dreadblades (Outlaw artifact)
				[220901] = "POWER_REGEN", -- Goremaw's Bite (Subtlety artifact)
				SURVIVAL = {
					  5277, -- Evasion
					 11327, -- Vanish
					 31224, -- Cload of Shadows
					197603, -- Embrace of Darkness (Subtlety artifact)
					199754, -- Riposte
				},
				BURST = {
					 13750, -- Adrenaline Rush
					 51690, -- Killing Spree
					121471, -- Shadow Blades
					212283, -- Symbols of Death
				}
			},
		},
	},
	AURA = {
		HARMFUL = {
			  1943, -- Rupture
			  2818, -- Deadly Poison
			  8680, -- Wound Poison
			 16511, -- Hemorrhage
			192425, -- Surge of Toxins (Assassination artifact)
			192925, -- Blood of the Assassinated (Assassination artifact)
			195452, -- Nightblade
			196937, -- Ghostly Strike
			CROWD_CTRL = {
				[6770] = "INCAPACITATE", -- Sap (incapacitate)
				STUN = {
					  1833, -- Cheap Shot (stun)
					196958, -- Strike from the Shadows (stun)
				},
			},
			SNARE = {
				  3409, -- Crippling Poison (slow)
				185763, -- Pistol Shot (slow)
				206760, -- Night Terrors (slow)
				222775, -- Strike from the Shadows (slow)
			},
		},
		PERSONAL = {
			  1966, -- Feint
			  2823, -- Deadly Poison
			  3408, -- Crippling Poison
			  5171, -- Slice and Dice
			  8679, -- Wound Poison
			 32645, -- Envenom
			108211, -- Leeching Poison
			193356, -- Broadsides
			193357, -- Shark Infested Waters
			193358, -- Grand Melee
			193359, -- True Bearing
			193538, -- Alacity
			195627, -- Oportunity
			197496, -- Finality: Eviscerate (Subtlety artifact)
			197498, -- Finality: Nightblade (Subtlety artifact)
			199600, -- Buried Treasure
			199603, -- Jolly Rogger
			202754, -- Hidden Blade (Outlaw artifact)
			245640, -- Shuriken Combo
		},
	},
}, {
	-- map aura to provider(s)
	[  1330] = 703, -- Garrote - Silence <- Garrote
	[  2818] = 185565, -- Deadly Poison <- Poisoned Knife
	[  3409] = 185565, -- Crippling Poison <- Poisoned Knife
	[  8680] = 185565, -- Wound Poison <- Poisoned Knife
	[ 11327] = 1856, -- Vanish
	[ 32645] = { -- Envenom
		 32645, -- Envenom
		152150, -- Death from Above
	},
	[115192] = 108208, -- Subterfuge
	[154953] = 154904, -- Internal Bleeding
	[185422] = 185313, -- Shadow Dance
	[185778] = 185767, -- Shellshocked (slow) <- Cannonball Barrage
	[192425] = 192424, -- Surge of Toxins (Assassination artifact)
	[192432] = 192428, -- From the Shadows (Assassination artifact)
	[192925] = 192923, -- Blood of the Assassinated (Assassination artifact)
	[193356] = 193316, -- Broadsides <- Roll the Bones
	[193357] = 193316, -- Shark Infested Waters <- Roll the Bones
	[193358] = 193316, -- Grand Melee <- Roll the Bones
	[193359] = 193316, -- True Bearing <- Roll the Bones
	[193538] = 193539, -- Alacity
	[195627] = 193315, -- Oportunity <- Saber Stash
	[196958] = 196951, -- Strike from the Shadows (stun)
	[197496] = 197406, -- Finality: Eviscerate (Subtlety artifact) <- Finality (Subtlety artifact)
	[197498] = 197406, -- Finality: Nightblade (Subtlety artifact) <- Finality (Subtlety artifact)
	[197603] = 197604, -- Embrace of Darkness (Subtlety artifact)
	[199600] = 193316, -- Buried Treasure <- Roll the Bones
	[199603] = 193316, -- Jolly Rogger <- Roll the Bones
	[202754] = 202753, -- Hidden Blade (Outlaw artifact)
	[206760] = 195452, -- Night Terrors (slow) <- Nightblade
	[209786] = 209782, -- Goremaw's Bite (Subtlety artifact) (slow)
	[220901] = 209782, -- Goremaw's Bite (Subtlety artifact)
	[222775] = 196951, -- Strike from the Shadows (slow)
	[226364] = 192422, -- Evasion (Assassination artifact) <- Shadow Swiftness (Assassination artifact)
	[240525] = 238102, -- Dense Concoction (Assassination artifact)
	[240837] = 238139, -- Loaded Dice (Outlaw artifact)
	[242705] = 238140, -- Feeding Frenzy (Subtlety artifact)
	[245389] = 245388, -- Toxic Blade
	[245640] = 245639, -- Shuriken Combo
}, {
	-- map aura to modified spell(s)
	[115192] = 115191, -- Subterfuge -> Stealth
	[154953] = 408, -- Internal Bleeding -> Kidney Shot
	[192425] = { -- Surge of Toxins (Assassination artifact)
		   408, -- Kidney Shot
		  1943, -- Rupture
		 32645, -- Envenom
		152150, -- Death from Above
	},
	[192432] = 79140, -- From the Shadows (Assassination artifact) -> Vendetta
	[192925] = 1943, -- Blood of the Assassinated (Assassination artifact) -> Rupture
	[193538] = { -- Alacity
		   408, -- Kidney Shot
		  1943, -- Rupture
		  2098, -- Run Through
		  5171, -- Slice and Dice
		 32645, -- Envenom
		152150, -- Death from Above
		193316, -- Roll the Bones
		195452, -- Nightblade
		196819, -- Eviscerate
		199804, -- Between the Eyes
	},
	[195627] = { -- Oportunity
		185763, -- Pistol Shot
		202895, -- Blunderbuss (Outlaw artifact)
	},
	[196958] = 185438, -- Strike from the Shadows (stun) -> Shadowstrike
	[197496] = 196819, -- Finality: Eviscerate (Subtlety artifact) -> Eviscerate
	[197498] = 195452, -- Finality: Nightblade (Subtlety artifact) -> Nightblade
	[197603] = 1784, -- Embrace of Darkness (Subtlety artifact) -> Stealth
	[199603] = { -- Jolly Rogger
		193315, -- Saber Slash
		193316, -- Roll the Bones
	},
	[202754] = 193315, -- Hidden Blade (Outlaw artifact) -> Saber Slash
	[222775] = 185438, -- Strike from the Shadows (slow) -> Shadowstrike
	[226364] = 5277, -- Evasion (Assassination artifact) -> Evasion
	[240525] = 185311, -- Dense Concoction (Assassination artifact) -> Crimson Vial
	[240837] = 13750, -- Loaded Dice (Outlaw artifact) -> Adrenaline Rush
	[242705] = 209782, -- Feeding Frenzy (Subtlety artifact) -> Goremaw's Bite (Subtlety artifact)
	[245640] = 196819, -- Shuriken Combo -> Eviscerate
})
