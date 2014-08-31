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
lib:__RegisterSpells("MAGE", "50400", 5, {
	COOLDOWN = {
		INTERRUPT = {
			  2139, -- Counterspell
			102051, -- Frostjaw
		},
		AURA = {
			PERSONAL = {
				[12051] = "MANA_REGEN", -- Evocation
				BURST = {
					12472, -- Icy Veins
					12042, -- Arcane Power
				},
				SURVIVAL = {
					[ 1463] = "MANA_REGEN", -- Incanter's Ward
					 45438, -- Ice Block
					115610, -- Temporal Shield
					 11426, -- Ice Barrier
					 86949, -- Cauterize
					 11958, -- Cold Snap
					 55342, -- Mirror Image
				},
				110909, -- Alter Time
				108843, -- Blazing Speed
				108839, -- Ice Floes
				 12043, -- Presence of Mind
				    66, -- Invisibility (Fading) and Spellbook
				 32612, -- Invisibility
				110959, -- Greater Invisibility (spellbook)
				110960, -- Greater Invisibility (buff)
			},
		},
		84714, -- Frozen Orb
		31687, -- Summon Water Elemental
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
			 79683, -- Arcane Missles!
			 44544, -- Fingers of Frost
			 57761, -- Brain Freeze
			  7302, -- Frost Armor
			  6117, -- Mage Armor
			 30482, -- Molten Armor
			112965, -- Fingers of Frost
			 48107, -- Heating Up
			 48108, -- Pyroblast!
			 12051, -- Invocation / Rune of Power
			116257, -- Invoker's Energy
			131078, -- Icy Veins (Glyphed)
		},
		HELPFUL = {
			   130, -- Slow Fall
			111264, -- Ice Ward
		},
		HARMFUL = {
			 44572, -- Deep Freeze
			 31589, -- Slow
			 44457, -- Living Bomb
			114923, -- Nether Tempest
			112948, -- Frost Bomb
			 11129, -- Combustion
			 12654, -- Ignite (Fire Mastery)
			CROWD_CTL = {
				  118, -- Polymorph
				28271, -- Polymorph: Pig
				28271, -- Polymorph: Turtle
				61305, -- Polymorph: Black Cat
				61721, -- Polymorph: Rabbit
				61780, -- Polymorph: Turkey
			},
		},
	},
}, {
	-- Map aura to provider
	[116257] =  12051, -- Invoker's Energy <= Invocation
	[110960] = 110959, -- Greater Invisibility (buff) => Greater Invisibility (spellbook)
	[ 32612] =     66, -- Invisible buff to Invisibility
	[131078] =  12472, -- Icy Veins (buff) => Icy Veins (spellbook)
	[ 57761] =  44614, -- Brain Freeze => Frostfire Bolt
	[ 44544] =  30455, -- Fingers of Frost => Ice Lance
	[ 79683] =   5143, -- Arcane Missles! => Arcane Missles
}, {
	-- Map aura to modified spell(s)
	[112965] = { -- Fingers of Frost =>
		30455, -- Ice Lance
		44572, -- Deep Freeze
	},
	[48107] = 108853, -- Heating Up => Inferno Blast
	[48108] =  11366, -- Pyroblast! => Pyroblast
	[12654] =  11129, -- Ignite => Combustion
})
