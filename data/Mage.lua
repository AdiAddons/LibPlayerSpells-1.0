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
lib:__RegisterSpells("MAGE", 70000, 3, {
	COOLDOWN = {
		 55342, -- Mirror Image (Arcane Talent)
		[ 2139] = "INTERRUPT", -- Counterspell
		[30449] = "DISPEL HARMFUL", -- Spellsteal
		AURA = {
			HARMFUL = {
				CROWD_CTL = {
					122, -- Frost Nova (root)
				},
			},
			PERSONAL = {
				  12042, -- Arcane Power (Arcane)
				 108839, -- Ice Floes (Arcane Talent)
 				 116014, -- Rune of Power (Arcane Talent)
				 205025, -- Presence of Mind (Arcane Talent)
				 212799, -- Displacement (Arcane)
				[ 12051] = "MANA_REGEN", -- Evocation (Arcane)
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
			31589, -- Slow (slow) (Arcane)
			CROWD_CTL = {
				   118, -- Polymorph (incapacitate)
				 28271, -- Polymorph: Turtle (incapacitate)
				 28272, -- Polymorph: Pig (incapacitate)
				 61305, -- Polymorph: Black Cat (incapacitate)
				 61721, -- Polymorph: Rabbit (incapacitate)
				 61780, -- Polymorph: Turkey
				 82691, -- Ring of Frost (incapacitate) (Arcane Talent)
				126819, -- Polymorph: Pig (porcupine) (incapacitate)
				161353, -- Polymorph: Polar Bear Cub (incapacitate)
				161354, -- Polymorph: Monkey (incapacitate)
				161355, -- Polymorph: Penguin (incapacitate)
				161372, -- Polymorph: Monkey (incapacitate)
			},
		},
		PERSONAL = {
			 79683, -- Arcane Missiles! (Arcane)
			210126, -- Arcane Familiar (Arcane Talent)
		},
	},
}, {
	-- map aura to provider(s)
	[ 79683] = { -- Arcane Missiles!
		   122, -- Frost Nova
		  1449, -- Arcane Explosion
		 30451, -- Arcane Blast
		 44425, -- Arcane Barrage
		157980, -- Supernova
	},
	[ 82691] = 113724, -- Ring of Frost
	[110960] = 110959, -- Greater Invisibility
	[116014] = 116011, -- Rune of Power
	[210126] = 205022, -- Arcane Familiar
	[212799] = 195676, -- Displacement
}, {
	-- map aura to modified spell(s)
	[ 79683] = 5143, -- Arcane Missiles! -> Arcane Missiles
	[205025] = 30451, -- Presence of Mind -> Arcane Blast
})
