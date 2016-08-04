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
lib:__RegisterSpells("MAGE", 70000, 4, {
	COOLDOWN = {
		   1953, -- Blink
		  44425, -- Arcane Barrage
		  55342, -- Mirror Image
		 153626, -- Arcane Orb
		 157980, -- Supernova (knockback)
		 205032, -- Charged Up
		 212653, -- Shimmer
		[  2139] = "INTERRUPT", -- Counterspell
		[ 30449] = "DISPEL HARMFUL", -- Spellsteal
		AURA = {
			HARMFUL = {
				224968, -- Mark of Aluneth (Arcane artifact)
				CROWD_CTL = {
					  122, -- Frost Nova (root)
					82691, -- Ring of Frost (incapacitate)
				},
			},
			PERSONAL = {
				 108839, -- Ice Floes
				 113862, -- Greater Invisibility (dmg reduction)
 				 116014, -- Rune of Power
				 205025, -- Presence of Mind
				 210126, -- Arcane Familiar
				 212799, -- Displacement
				[ 12042] = "BURST", -- Arcane Power
				[ 12051] = "MANA_REGEN", -- Evocation
				[ 41425] = "INVERT_AURA", -- Hypothermia
				SURVIVAL = {
					 11426, -- Ice Barrier
					 45438, -- Ice Block
					110960, -- Greater Invisibility
				},
			},
		},
	},
	AURA = {
		HELPFUL = {
			130, -- Slow Fall
		},
		HARMFUL = {
			 31589, -- Slow (slow)
			114923, -- Nether Tempest
			210824, -- Touch of the Magi (Arcane artifact)
			CROWD_CTL = {
				   118, -- Polymorph (incapacitate)
				 28271, -- Polymorph: Turtle (incapacitate)
				 28272, -- Polymorph: Pig (incapacitate)
				 61305, -- Polymorph: Black Cat (incapacitate)
				 61721, -- Polymorph: Rabbit (incapacitate)
				 61780, -- Polymorph: Turkey
				126819, -- Polymorph: Pig (porcupine) (incapacitate)
				161353, -- Polymorph: Polar Bear Cub (incapacitate)
				161354, -- Polymorph: Monkey (incapacitate)
				161355, -- Polymorph: Penguin (incapacitate)
				161372, -- Polymorph: Monkey (incapacitate)
			},
		},
		PERSONAL = {
			  79683, -- Arcane Missiles! (Arcane)
			 198924, -- Quickening
		},
	},
}, {
	-- map aura to provider(s)
	[ 41425] = 45438, -- Hypothermia <- Ice Block
	[ 79683] = 5143, -- Arcane Missiles! -> Arcane Missiles
	[ 82691] = 113724, -- Ring of Frost
	[110960] = 110959, -- Greater Invisibility
	[113862] = 110959, -- Greater Invisibility (dmg reduction)
	[116014] = 116011, -- Rune of Power
	[198924] = 198923, -- Quickening
	[210126] = 205022, -- Arcane Familiar
	[210824] = 210725, -- Touch of the Magi
	[212799] = 195676, -- Displacement
}, {
	-- map aura to modified spell(s)
	[198924] = { -- Quickening
		 1449, -- Arcane Explosion
		 5143, -- Arcane Missiles
		30451, -- Arcane Blast
	},
	[205025] = 30451, -- Presence of Mind -> Arcane Blast
	[210824] = 30451, -- Touch of the Magi (Arcane artifact)
})
