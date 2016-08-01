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
lib:__RegisterSpells("ROGUE", 70000, 3, {
	COOLDOWN = {
		   1725, -- Distract
		 195457, -- Grappling Hook
		[  1766] = "INTERRUPT", -- Kick
		AURA = {
			[ 57934] = "HELPFUL", -- Tricks of the Trade
			[199740] = "PET INVERT_AURA", -- Bribe
			HARMFUL = {
				 185778, -- Shellshocked (slow)
				 209786, -- Goremaw's Bite (Subtlety artifact) (slow)
				[137619] = "BURST", -- Marked for Death
				CROWD_CTL = {
					   408, -- Kidney Shot (stun)
					  1776, -- Gouge (incapacitate)
					  2094, -- Blind (disorient)
					199743, -- Parley (incapacitate)
					199804, -- Between the Eyes (stun)
				},
			},
			PERSONAL = {
				   2983, -- Sprint
				  13877, -- Blade Flurry
				  36554, -- Shadowstep
				 152150, -- Death from Above
				 185311, -- Crimson Vial
				 185422, -- Shadow Dance
				 212283, -- Symbols of Death
				 227151, -- Death
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
				}
			},
		},
	},
	AURA = {
		HARMFUL = {
			185763, -- Pistol Shot (slow)
			195452, -- Nightblade
			196937, -- Ghostly Strike
			206760, -- Night Terrors (slow)
			222775, -- Strike from the Shadows (slow)
			CROWD_CTL = {
				  1833, -- Cheap Shot (stun)
				  6770, -- Sap (incapacitate)
				196958, -- Strike from the Shadows (stun)
			},
		},
		PERSONAL = {
			  1966, -- Feint
			  5171, -- Slice and Dice
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
			206237, -- Enveloping Shadows
		},
	},
}, {
	-- map aura to provider(s)
	[ 11327] = 1856, -- Vanish
	[185422] = 185313, -- Shadow Dance
	[185778] = 185767, -- Shellshocked (slow) <- Cannonball Barrage
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
	[206760] = 195452, -- Night Terrors (slow) <- Nightblade
	[209786] = 209782, -- Goremaw's Bite (Subtlety artifact) (slow)
	[220901] = 209782, -- Goremaw's Bite (Subtlety artifact)
	[222775] = 196951, -- Strike from the Shadows (slow)
	[227151] = 212283, -- Death <- Symbols of Death
}, {
	-- map aura to modified spell(s)
	[193538] = { -- Alacity
		   408, -- Kidney Shot
		  2098, -- Run Through
		  5171, -- Slice and Dice
		152150, -- Death from Above
		193316, -- Roll the Bones
		195452, -- Nightblade
		196819, -- Eviscerate
		199804, -- Between the Eyes
	},
	[195627] = 185763, -- Oportunity -> Pistol Shot
	[196958] = 185438, -- Strike from the Shadows (stun) -> Shadowstrike
	[197496] = 196819, -- Finality: Eviscerate (Subtlety artifact) -> Eviscerate
	[197498] = 195452, -- Finality: Nightblade (Subtlety artifact) -> Nightblade
	[197603] = 1784, -- Embrace of Darkness (Subtlety artifact) -> Stealth
	[199603] = { -- Jolly Rogger
		193315, -- Saber Slash
		193316, -- Roll the Bones
	},
	[222775] = 185438, -- Strike from the Shadows (slow) -> Shadowstrike
	[227151] = 185438, -- Death -> Shadowstrike
})
