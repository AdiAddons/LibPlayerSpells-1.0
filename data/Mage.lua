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

local lib = LibStub('LibPlayerSpells-1.0')
if not lib then return end
lib:__RegisterSpells('MAGE', 80000, 1, {
	COOLDOWN = {
		   1953, -- Blink
		  31687, -- Summon Water Elemental (Frost)
		  84714, -- Frozen Orb (Frost)
		 190336, -- Conjure Refreshment
		 190356, -- Blizzard (Frost)
		[   475] = 'DISPEL HELPFUL CURSE', -- Remove Curse
		[  2139] = 'INTERRUPT', -- Counterspell
		[235219] = 'SURVIVAL', -- Cold Snap (Frost)
		AURA = {
			HARMFUL = {
				CROWD_CTRL = {
					ROOT = {
						  122, -- Frost Nova
						33395, -- Freeze (Frost - Water Elemental)
					},
				},
				SNARE = {
					212792, -- Cone of Cold (Frost)
				},
			},
			PERSONAL = {
				 11426, -- Ice Barrier (Frost)
				[41425] = 'INVERT_AURA', -- Hypothermia
				BURST = {
					12472, -- Icy Veins (Frost)
				},
				SURVIVAL = {
					   66, -- Invisibility (Fading)
					32612, -- Invisibility
					45438, -- Ice Block
				},
			},
		},
	},
	AURA = {
		HARMFUL = {
			CROWD_CTRL = {
				INCAPACITATE = {
					   118, -- Polymorph (Sheep)
					 28271, -- Polymorph (Turtle)
					 28272, -- Polymorph (Pig)
					 61305, -- Polymorph (Black Cat)
					 61721, -- Polymorph (Rabbit)
					 61780, -- Polymorph (Turkey)
					126819, -- Polymorph (Porcupine)
					161353, -- Polymorph (Polar Bear Cub)
					161354, -- Polymorph (Monkey)
					161355, -- Polymorph (Penguin)
					161372, -- Polymorph (Peacock)
					277787, -- Polymorph (Direhorn)
					277792, -- Polymorph (Bumblebee)
				},
			},
			SNARE = {
				205708, -- Chilled (Frost)
				228354, -- Flurry (Frost)
			},
		},
		HELPFUL = {
			  130, -- Slow Fall
			[1459] = 'RAIDBUFF', -- Arcane Intellect
		},
		PERSONAL = {
			 44544, -- Fingers of Frost (Frost)
			190446, -- Brain Freeze (Frost)
			205473, -- Icicles (Frost)
		},
	},
	DISPEL = {
		[30449] = 'HARMFUL MAGIC', -- Spellsteal
	},
}, {
	-- map aura to provider(s)
	[ 32612] =     66, -- Invisibility
	[ 41425] =  45438, -- Hypothermia <- Ice Block
	[ 44544] = 112965, -- Fingers of Frost (Frost)
	[190446] = 190447, -- Brain Freeze (Frost)
	[205708] = { -- Chilled (Frost)
		   116, -- Frostbolt
		 84714, -- Frozen Orb
		190356, -- Blizzard
	},
	[205473] =  76613, -- Icicles <- Mastery: Icicles (Frost)
	[212792] =    120, -- Cone of Cold (Frost)
	[228354] =  44614, -- Flurry (Frost)
}, {
	-- map aura to modified spell(s)
	[ 44544] =  30455, -- Fingers of Frost (Frost) -> Ice Lance
	[190446] =  44614, -- Brain Freeze (Frost) -> Flurry
	[205473] =  30455, -- Icicles (Frost) -> Ice Lance
})
