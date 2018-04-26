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
lib:__RegisterSpells("HUNTER", 80000, 1, {
	COOLDOWN = {
		   781, -- Disengage
		 19434, -- Aimed Shot
		109304, -- Exhilaration
		257044, -- Rapid Fire (Marksmanship)
		INTERRUPT = {
			147362, -- Counter Shot (Marksmanship, Survival)
		},
		AURA = {
			HELPFUL = {
				34477, -- Misdirection
			},
			HARMFUL = {
				132951, -- Flare
				CROWD_CTRL = {
					INCAPACITATE = {
						3355, -- Freezing Trap
					},
				},
				SNARE = {
					  5116, -- Concussive Shot (Marksmanship)
					135299, -- Tar Trap (Marksmanship)
					186387, -- Bursting Shot (Marksmanship)
				},
			},
			PERSONAL = {
				  5384, -- Feign Death
				 35079, -- Misdirection
				118922, -- Posthaste (Marksmanship talent)
				186257, -- Aspect of the Cheetah
				186258, -- Aspect of the Cheetah
				260242, -- Precise Shots (Marksmanship)
				BURST = {
					193526, -- Trueshot (Marksmanship)
				},
				SURVIVAL = {
					186265, -- Aspect of the Turtle
				},
			},
		},
	},
	AURA = {
		PERSONAL = {
			  6197, -- Eagle Eye
			257622, -- Trick Shots (Marksmanship)
		},
	},
}, {
	-- map aura to provider(s)
	[  3355] = 187650, -- Freezing Trap
	[ 35079] = 34477, -- Misdirection
	[118922] = 781, -- Posthaste (Marksmanship talent) <- Disengage
	[132951] = 1543, -- Flare
	[135299] = 187698, -- Tar Trap
	[186258] = 186557, -- Aspect of the Cheetah
	[257622] = 257621, -- Trick Shots (Marksmanship)
	[260242] = 260240, -- Precise Shots (Marksmanship)
}, {
	-- map aura to modified spell(s)
	[257622] = { -- Trick Shots (Marksmanship)
		 19434, -- Aimed Shot
		257044, -- Rapid Fire
	},
	[260242] = 185358, -- Precise Shots (Marksmanship) -> Arcane Shot
})
