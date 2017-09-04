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
lib:__RegisterSpells("MAGE", 70300, 1, {
	COOLDOWN = {
		   1953, -- Blink
		  31687, -- Summon Water Elemental
		  44425, -- Arcane Barrage
		  55342, -- Mirror Image
		  84714, -- Frozen Orb
		 153595, -- Comet Storm
		 153626, -- Arcane Orb
		 157980, -- Supernova (knockback)
		 190356, -- Blizzard
		 194466, -- Phoenix's Flames (Fire artifact)
		 198929, -- Cinderstorm
		 205032, -- Charged Up
		 212653, -- Shimmer
		 214634, -- Ebonbolt (Frost artifact)
		[  2139] = "INTERRUPT", -- Counterspell
		[ 30449] = "DISPEL HARMFUL MAGIC", -- Spellsteal
		[235219] = "SURVIVAL", -- Cold Snap
		AURA = {
			HELPFUL = {
				240671, -- Warmth of the Phoenix (Fire artifact)
			},
			HARMFUL = {
				135029, -- Water Jet (Water Elemental)
				155158, -- Meteor
				157997, -- Ice Nova (root) -- TODO: check category
				194522, -- Blast Furnace (Fire artifact)
				217694, -- Living Bomb
				224968, -- Mark of Aluneth (Arcane artifact)
				CROWD_CTRL = {
					[31661] = "DISORIENT", -- Dragon's Breath (disorient)
					[82691] = "INCAPACITATE", -- Ring of Frost (incapacitate)
					ROOT = {
						  122, -- Frost Nova (root)
						33395, -- Freeze (Water Elemental) (root)
					},
				},
				SNARE = {
					157981, -- Blast Wave (slow)
					205021, -- Ray of Frost (slow)
					212792, -- Cone of Cold (slow)
					236299, -- Chrono Shift (slow)
				},
			},
			PERSONAL = {
				 108839, -- Ice Floes
				 113862, -- Greater Invisibility (dmg reduction)
 				 116014, -- Rune of Power
				 194316, -- Cauterizing Blink (Fire artifact)
				 205025, -- Presence of Mind
				 208166, -- Ray of Frost
				 210126, -- Arcane Familiar
				 212799, -- Displacement
				 227482, -- Scorched Earth (fire artifact)
				 236298, -- Chrono Shift
				 240555, -- Freezing Rain (Frost artifact)
				[ 12051] = "POWER_REGEN", -- Evocation
				[ 41425] = "INVERT_AURA", -- Hypothermia
				SURVIVAL = {
					    66, -- Invisibility (Fading)
					 11426, -- Ice Barrier
					 32612, -- Invisibility
					 45438, -- Ice Block
					110960, -- Greater Invisibility
					235313, -- Blazing Barrier
					235450, -- Prismatic Barrier
				},
				BURST = {
					 12042, -- Arcane Power
					 12472, -- Icy Veins
					190319, -- Combustion
					195446, -- Chilled to the Core (Frost artifact)
				}
			},
		},
	},
	AURA = {
		HELPFUL = {
			130, -- Slow Fall
		},
		HARMFUL = {
			112948, -- Frost Bomb
			114923, -- Nether Tempest
			210824, -- Touch of the Magi (Arcane artifact)
			226757, -- Conflagration
			228358, -- Winter's Chill
			CROWD_CTRL = {
				[228600] = "ROOT", -- Glacial Spike (root) -- TODO: check category
				INCAPACITATE = {
					   118, -- Polymorph (incapacitate)
					 28271, -- Polymorph: Turtle (incapacitate)
					 28272, -- Polymorph: Pig (incapacitate)
					 61305, -- Polymorph: Black Cat (incapacitate)
					 61721, -- Polymorph: Rabbit (incapacitate)
					 61780, -- Polymorph: Turkey (incapacitate)
					126819, -- Polymorph: Pig (porcupine) (incapacitate)
					161353, -- Polymorph: Polar Bear Cub (incapacitate)
					161354, -- Polymorph: Monkey (incapacitate)
					161355, -- Polymorph: Penguin (incapacitate)
					161372, -- Polymorph: Monkey (incapacitate)
				},
			},
			SNARE = {
				  2120, -- Flamestrike (slow)
				 31589, -- Slow (slow)
				205708, -- Chilled (slow)
				228354, -- Flurry (slow)
			},
		},
		PERSONAL = {
			 44544, -- Fingers of Frost
			 48108, -- Hot Streak!
			 79683, -- Arcane Missiles!
			157644, -- Enhanced Pyrotechnics
			190446, -- Brain Freeze
			195391, -- Jouster (Frost artifact)
			195418, -- Chain Reaction (Frost artifact)
			199844, -- Glacial Spike!
			205473, -- Icicles
			236060, -- Frenetic Speed
		},
	},
}, {
	-- map aura to provider(s)
	[ 32612] = 66, -- Invisibility
	[ 41425] = 45438, -- Hypothermia <- Ice Block
	[ 44544] = 112965, -- Fingers of Frost
	[ 48108] = 195283, -- Hot Streak! <- Hot Streak
	[ 79683] = 5143, -- Arcane Missiles! -> Arcane Missiles
	[ 82691] = 113724, -- Ring of Frost
	[110960] = 110959, -- Greater Invisibility
	[113862] = 110959, -- Greater Invisibility (dmg reduction)
	[116014] = 116011, -- Rune of Power
	[155158] = 153561, -- Meteor
	[157644] = 157642, -- Enhanced Pyrotechnics
	[190446] = 190447, -- Brain Freeze
	[194316] = 194318, -- Cauterizing Blink (Fire artifact)
	[194522] = 194487, -- Blast Furnace (Fire artifact)
	[195391] = 214626, -- Jouster (Frost artifact)
	[195418] = 195419, -- Chain Reaction (Frost artifact)
	[195446] = 195448, -- Chilled to the Core (Frost artifact)
	[199844] = 199786, -- Glacial Spike! <- Glacial Spike
	[205473] = 76613, -- Icicles <- Mastery: Icicles
	[205708] = { -- Chilled (slow)
		   116, -- Frostbolt
		 84714, -- Frozen Orb
		190356, -- Blizzard
	},
	[208166] = 205021, -- Ray of Frost
	[210126] = 205022, -- Arcane Familiar
	[210824] = 210725, -- Touch of the Magi
	[212792] = 120, -- Cone of Cold (slow)
	[212799] = 195676, -- Displacement
	[217694] = 44457, -- Living Bomb
	[226757] = 205023, -- Conflagration
	[227482] = 227481, -- Scorched Earth (Fire artifact)
	[228354] = 44614, -- Flurry (slow)
	[228358] = 190447, -- Winter's Chill <- Brain Freeze
	[228600] = 199786, -- Glacial Spike (root)
	[236060] = 236058, -- Frenetic Speed
	[236298] = 235711, -- Chrono Shift
	[236299] = 235711, -- Chrono Shift (slow)
	[240555] = 238092, -- Freezing Rain (Frost artifact)
	[240671] = 238091, -- Warmth of the Phoenix (Fire artifact)
}, {
	-- map aura to modified spell(s)
	[ 44544] = 30455, -- Fingers of Frost -> Ice Lance
	[ 48108] = { -- Hot Streak!
		 2120, -- Flamestrike
		11366, -- Pyroblast
	},
	[157644] = 133, -- Enhanced Pyrotechnics -> Fireball
	[190446] = 44614, -- Brain Freeze -> Flurry
	[194316] = { -- Cauterizing Blink (Fire artifact)
		  1953, -- Blink
		212653, -- Shimmer
	},
	[194522] = 108853, -- Blast Furnace (Fire artifact) -> Fire Blast
	[195391] = 30455, -- Jouster (Frost artifact) -> Ice Lance
	[195418] = 30455, -- Chain Reaction (Frost artifact) -> Ice Lance
	[195446] = 12472, -- Chilled to the Core (Frost artifact) -> Icy Veins
	[205025] = 30451, -- Presence of Mind -> Arcane Blast
	[205473] = 116, -- Icicles -> Frostbolt
	[210824] = 30451, -- Touch of the Magi (Arcane artifact)
	[226757] = 133, -- Conflagration -> Fireball
	[227482] = 2948, -- Scorched Earth (Fire artifact) -> Scorch
	[228358] = 44614, -- Winter's Chill -> Flurry
	[236060] = 2948, -- Frenetic Speed -> Scorch
	[236298] = 44425, -- Chrono Shift -> Arcane Barrage
	[236299] = 44425, -- Chrono Shift (slow) -> Arcane Barrage
	[240555] = 190356, -- Freezing Rain (Frost artifact) -> Blizzard
	[240671] = 194466, -- Warmth of the Phoenix (Fire artifact) -> Phoenix's Flames (Fire artifact)
})
