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
lib:__RegisterSpells("MAGE", "60100", 4, {
	COOLDOWN = {
		31687, -- Summon Water Elemental
		84714, -- Frozen Orb
		INTERRUPT = {
			  2139, -- Counterspell
			102051, -- Frostjaw
		},
		AURA = {
			PERSONAL = {
				     66, -- Invisibility (Fading) and Spellbook
				  12043, -- Presence of Mind
				  32612, -- Invisibility
				 108839, -- Ice Floes
				 108843, -- Blazing Speed
				 110960, -- Greater Invisibility (buff)
				[ 12051] = "MANA_REGEN", -- Evocation
				BURST = {
					12042, -- Arcane Power
					12472, -- Icy Veins
					55342, -- Mirror Image
				},
				SURVIVAL = {
					 11426, -- Ice Barrier
					 11958, -- Cold Snap
					 45438, -- Ice Block
					 86949, -- Cauterize
					110909, -- Alter Time (Buff)
					HELPFUL = {
						159916, -- Amplify Magic
					},
				},
			},
		},
	},
	DISPEL = {
		["COOLDOWN HELPFUL"] = {
			475, -- Remove Curse
		},
		HARMFUL = {
			30449, -- Spellsteal
		},
	},
	RAIDBUFF = {
		[ 1459] = "SPL_POWER CRITICAL", -- Arcane Brillance
		[61316] = "SPL_POWER CRITICAL", -- Dalaran Brillance
		[80353] = "BURST_HASTE",        -- Time Warp
	},
	AURA = {
		PERSONAL = {
			  44544, -- Fingers of Frost
			  48107, -- Heating Up
			  48108, -- Pyroblast!
			  57761, -- Brain Freeze
			  79683, -- Arcane Missles!
			 112965, -- Fingers of Frost
			[ 36032] = "INVERT_AURA", -- Arcane Charge
		},
		HELPFUL = {
			   130, -- Slow Fall
			111264, -- Ice Ward
		},
		HARMFUL = {
			 11129, -- Combustion
			 12654, -- Ignite (Fire Mastery)
			 31589, -- Slow
			 44457, -- Living Bomb
			 44572, -- Deep Freeze
			112948, -- Frost Bomb
			114923, -- Nether Tempest
			CROWD_CTL = {
				   118, -- Polymorph
				 28271, -- Polymorph: Turtle
				 28272, -- Polymorph: Pig
				 61305, -- Polymorph: Black Cat
				 61721, -- Polymorph: Rabbit
				 61780, -- Polymorph: Turkey
				126819, -- Polymorph: Pig (porcupine)
				161353, -- Polymorph: Polar Bear Cub
				161354, -- Polymorph: Monkey
				161355, -- Polymorph: Penguin
				161372, -- Polymorph: Monkey
			},
		},
	},
}, {
	-- Map aura to provider
	[ 32612] =     66, -- Invisibility (buff) <- Invisibility (spellbook)
	[ 36032] = { -- Arcane Charge
		 1449, -- Arcane Explosion
		 5143, -- Arcane Missiles
		12051, -- Evocation (consumer)
		30451, -- Arcane Blast
		44425, -- Arcane Barrage (consumer)
	},
	[ 44544] =  30455, -- Fingers of Frost <- Ice Lance
	[ 48107] =  11366, -- Heating Up <- Pyroblast
	[ 48108] =  11366, -- Pyroblast! <- Pyroblast
	[ 57761] =  44614, -- Brain Freeze <- Frostfire Bolt
	[ 79683] =   5143, -- Arcane Missles! <- Arcane Missles
	[110909] = 108978, -- Alter Time (buff) <- Alter Time (talent)
	[110960] = 110959, -- Greater Invisibility (buff) <- Greater Invisibility (spellbook)
}, {
	-- Map aura to modified spell(s)
	[ 12654] =  11129, -- Ignite => Combustion
	[110909]= { -- Alter Time (Buff)
		108978, -- Alter Time
		127140, -- Alter Time (while buffed)
	},
	[112965] = { -- Fingers of Frost =>
		30455, -- Ice Lance
		44572, -- Deep Freeze
	},
})
