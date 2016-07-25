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
		INTERRUPT = {
			2139, -- Counterspell
		},
		AURA = {
			PERSONAL = {
				205025, -- Presence of Mind (Arcane Talent)
				 12042, -- Arcane Power (Arcane)
				 55342, -- Mirror Image (Arcane Talent) NOTE: No Aura
				212799, -- Displacement (Arcane)
			  [ 12051] = "MANA_REGEN", -- Evocation (Arcane)
				116014, -- Rune of Power (Arcane Talent)
				108839, -- Ice Floes (Arcane Talent)
				SURVIVAL = {
					 45438, -- Ice Block
					 11426, -- Ice Barrier
					110960, -- Greater Invisibility
				},
			},
			HELPFUL = {

			},
			HARMFUL = {
				CROWD_CTL = {
					122, -- Frost Nova (root)
				}

			},
		},
	},
	DISPEL = {
		HARMFUL = {
			30449, -- Spellsteal
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
				126819, -- Polymorph: Pig (porcupine) (incapacitate)
				161353, -- Polymorph: Polar Bear Cub (incapacitate)
				161354, -- Polymorph: Monkey (incapacitate)
				161355, -- Polymorph: Penguin (incapacitate)
				161372, -- Polymorph: Monkey (incapacitate)
				 82691, -- Ring of Frost (incapacitate) (Arcane Talent)
			}
		},
		PERSONAL = {
			210126, -- Arcane Familiar (Arcane Talent)
			 79683, -- Arcane Missiles! (Arcane)
		},
	},
}, {
	-- map aura to provider(s)
	[110960] = 110959, -- Greater Invisibility
	[212799] = 195676, -- Displacement
	[210126] = 205022, -- Arcane Familiar
	[116014] = 116011, -- Rune of Power
	[ 82691] = 113724, -- Ring of Frost
	[ 79683] = { -- Arcane Missiles!
		 30451, -- Arcane Blast
		 44425, -- Arcane Barrage
		  1449, -- Arcane Explosion
		157980, -- Supernova
		   122, -- Frost Nova
	},
	
}, {
	-- map aura to modified spell(s)
	[205025] = 30451, -- Presence of Mind -> Arcane Blast
	[ 79683] = 5143, -- Arcane Missiles! -> Arcane Missiles
})
