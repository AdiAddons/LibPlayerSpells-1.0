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
		 19434, -- Aimed Shot (Marksmanship)
		109304, -- Exhilaration
		120360, -- Barrage (Marksmanship talent)
		198670, -- Piercing Shot (Marksmanship talent)
		212431, -- Explosive Shot (Marksmanship talent)
		257044, -- Rapid Fire (Marksmanship)
		INTERRUPT = {
			147362, -- Counter Shot (Marksmanship, Survival)
		},
		AURA = {
			HELPFUL = {
				34477, -- Misdirection
			},
			HARMFUL = {
				117405, -- Binding Shot
				132951, -- Flare
				CROWD_CTRL = {
					INCAPACITATE = {
						3355, -- Freezing Trap
					},
					ROOT = {
						117526, -- Binding Shot (Marksmanship talent)
					}
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
				199483, -- Camouflage (Marksmanship talent)
				260242, -- Precise Shots (Marksmanship)
				260402, -- Double Tap (Marksmanship talent)
				269576, -- Master Marksman (Marksmanship talent)
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
		HARMFUL = {
			131894, -- A Murder of Crows (Marksmanship talent)
			257284, -- Hunter's Mark (Marksmanship talent)
			271788, -- Serpent Sting (Marksmanship talent)
		},
		PERSONAL = {
			  6197, -- Eagle Eye
			193534, -- Steady Focus (Marksmanship talent)
			194594, -- Lock and Load (Marksmanship talent)
			257622, -- Trick Shots (Marksmanship)
			260395, -- Lethal Shots (Marksmanship)
			269502, -- Lethal Shots (Marksmanship talent)
		},
	},
}, {
	-- map aura to provider(s)
	[  3355] = 187650, -- Freezing Trap
	[ 35079] = 34477, -- Misdirection
	[117405] = 109248, -- Binding Shot (Marksmanship talent)
	[117526] = 109248, -- Binding Shot (Marksmanship talent)
	[118922] = 109215, -- Posthaste (Marksmanship talent)
	[132951] = 1543, -- Flare
	[135299] = 187698, -- Tar Trap
	[186258] = 186557, -- Aspect of the Cheetah
	[193534] = 193533, -- Steady Focus (Marksmanship talent)
	[194594] = 194595, -- Lock and Load (Marksmanship talent)
	[257622] = 257621, -- Trick Shots (Marksmanship)
	[260242] = 260240, -- Precise Shots (Marksmanship)
	[260395] = 260393, -- Lethal Shots (Marksmanship talent)
	[269502] = 260393, -- Lethal Shots (Marksmanship talent)
	[269576] = 260309, -- Master Marksman (Marksmanship talent)
}, {
	-- map aura to modified spell(s)
	[118922] = 781, -- Posthaste (Marksmanship talent) -> Disengage
	[193534] = 56641, -- Steady Focus (Marksmanship talent) -> Steady Shot
	[194594] = 19434, -- Lock and Load (Marksmanship talent) -> Aimed Shot
	[257622] = { -- Trick Shots (Marksmanship)
		 19434, -- Aimed Shot
		257044, -- Rapid Fire
	},
	[260242] = 185358, -- Precise Shots (Marksmanship) -> Arcane Shot
	[260395] = 257044, -- Lethal Shots (Marksmanship talent) -> Rapid Fire
	[260402] = { -- Double Tap (Marksmanship talent)
		 19434, -- Aimed Shot
		257044, -- Rapid Fire
	},
	[269502] = 19434, -- Lethal Shots (Marksmanship talent) -> Aimed Shot
	[269576] = { -- Master Marksman (Marksmanship talent)
		185358, -- Arcane Shot
		267620, -- Multi-Shot
	},
})
