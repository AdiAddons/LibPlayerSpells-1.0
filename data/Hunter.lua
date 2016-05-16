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
lib:__RegisterSpells("HUNTER", 70000, 1, {
	COOLDOWN = {
		   781, -- Disengage
		  1543, -- Flare
		 34026, -- Kill Command
		109304, -- Exhilaration
		120360, -- Barrage
		198670, -- Head Shot
		200163, -- Throwing Axes
		201078, -- Snake Hunter
		212431, -- Explosive Shot
		212436, -- Butchery
		INTERRUPT = {
			147362, -- Counter Shot
			187707, -- Muzzle
		},
		AURA = {
			HARMFUL = {
				  5116, -- Concussive Shot
				 13812, -- Explosive Trap
				117405, -- Binding Shot
				117526, -- Binding Shot (stun)
				131894, -- A Murder of Crows (Marksmanship)
				135299, -- Tar Trap
				162480, -- Steel Trap (root)
				162487, -- Steel Trap (bleed)
				185855, -- Lacerate
				190927, -- Harpoon
				191241, -- Sticky Bomb
				191397, -- Bestial Cunning
				191413, -- Bestial Ferocity
				194279, -- Caltrops
				194599, -- Black Arrow
				194858, -- Dragonsfire Grenade
				195645, -- Wing Clip
				201142, -- Frozen Wake
				201158, -- Super Sticky Tar
				206505, -- A Murder of Crows (Survival)
				224729, -- Bursting Shot
				[ 3355] = "CROWD_CTL", -- Freezing Trap
				[19386] = "CROWD_CTL", -- Wyvern Sting
			},
			PERSONAL = {
				   5384, -- Feign Death
				  35079, -- Misdirection
				 118922, -- Posthaste
				 120694, -- Dire Beast
				 186257, -- Aspect of the Cheetah (90%)
				 186258, -- Aspect of the Cheetah (30%)
				 190931, -- Mongoose Fury
				 193530, -- Aspect of the Wild
				 194407, -- Spitting Cobra
				 198783, -- Camouflage (Marksmanship)
				 199483, -- Camouflage (Survival)
				 206817, -- Heightened Vulnerability
				[ 19574] = "BURST", -- Bestial Wrath
				[186265] = "SURVIVAL", -- Aspect of the Turtle
				[186289] = "BURST", -- Aspect of the Eagle
				[193526] = "BURST", -- Trueshot

			},
			PET = {
				   136, -- Mend Pet
				118455, -- Beast Cleave
				191414, -- Bestial Tenacity
			},
		},
	},
	AURA = {
		HARMFUL = {
			  1462, -- Beast Lore (NOTE: HELPFUL on player controlled pets, HARMFUL else)
			  1515, -- Tame Beast
			 63468, -- Careful Aim
			118253, -- Serpent Sting
			187131, -- Vulnurable
			199803, -- True Aim
			200108, -- Ranger's Net (root)
			206755, -- Ranger's Net (slow)
			213424, -- Deadeye
		},
		PERSONAL = {
			  6197, -- Eagle Eye
			185365, -- Hunter's Mark
			193534, -- Steady Focus
			194594, -- Lock and Load
			201081, -- Mok'Nathal Tactics
			204321, -- Instincts of the Raptor
			204324, -- Instincts of the Cheetah
			204333, -- Instincts of the Mongoose
			223138, -- Marking Targets
		},
	},
}, {
	-- map aura to provider(s)
	[  3355] = 187650, -- Freezing Trap
	[ 35079] = 34477, -- Misdirection
	[ 13812] = 191433, -- Explosive Trap
	[ 63468] = 53238, -- Careful Aim
	[117405] = 109248, -- Binding Shot
	[117526] = 109248, -- Binding Shot (stun)
	[118253] = 87935, -- Serpent Sting
	[118455] = 2643, -- Beast Cleave
	[118922] = 109215, -- Posthaste
	[120694] = 120679, -- Dire Beast
	[135299] = 187698, -- Tar Trap
	[162480] = 162488, -- Steel Trap (root)
	[162487] = 162488, -- Steel Trap (bleed)
	[185365] = { -- Hunter's Mark
		  2643, -- Multi-Shot
		185358, -- Arcane Shot
		214579, -- Sidewinders
	},
	[186258] = 186257, -- Aspect of the Cheetah
	[187131] = 185901, -- Vulnurable <- Marked Shot
	[190927] = 190925, -- Harpoon
	[190931] = 190928, -- Mongoose Fury <- Mongoose Bite
	[191397] = 191384, -- Bestial Cunning <- Aspect of the Beast
	[191413] = 191384, -- Bestial Ferocity <- Aspect of the Beast
	[191414] = 191384, -- Bestial Tenacity <- Aspect of the Beast
	[193534] = 193533, -- Steady Focus
	[194279] = 194277, -- Caltrops
	[194594] = 194595, -- Lock and Load
	[194858] = 194855, -- Dragonsfire Grenade
	[199803] = 199527, -- True Aim
	[201142] = 199543, -- Frozen Wake <- Expert Trapper
	[201158] = 199543, -- Super Sticky Tar <- Expert Trapper
	[206755] = 200108, -- Ranger's Net (slow)
	[201081] = 201082, -- Mok'Nathal Tactics <- Way of the Mok'Nathal
	[204321] = 204315, -- Instincts of the Raptor <- Animal Instincts
	[204324] = 204315, -- Instincts of the Cheetah <- Animal Instincts
	[204333] = 204315, -- Instincts of the Mongoose <- Animal Instincts
	[213424] = 213423, -- Deadeye <- Patient Sniper
	[223138] = 75, -- Marking Targets <- Auto Shot
	[224729] = 186387, -- Bursting Shot
}, {
	-- map aura to modified spell(s)
	[ 63468] = { -- Careful Aim
		  2643, -- Multi-Shot
		 19434, -- Aimed Shot
		185358, -- Arcane Shot
		185901, -- Marked Shot
		214579, -- Sidewinders ??
	},
	[118253] = { -- Serpent Sting
		186270, -- Raptor Strike
		187708, -- Carve
	},
	[118922] = { -- Posthaste
		   781, -- Disengage
		190925, -- Harpoon
	},
	[187131] = { -- Vulnurable
		 19434, -- Aimed Shot
		185901, -- Marked Shot
	},
	[191397] = 202800, -- Bestial Cunning -> Flanking Strike
	[191413] = 202800, -- Bestial Ferocity -> Flanking Strike
	[191414] = 202800, -- Bestial Tenacity -> Flanking Strike
	[193526] = { -- Trueshot
		  2643, -- Multi-Shot
		185358, -- Arcane Shot
		193526, -- Trueshot
		214579, -- Sidewinders ??
	},
	[193534] = { -- Steady Focus
		  2643, -- Multi-Shot
		185358, -- Arcane Shot
		214579, -- Sidewinders
	},
	[194594] = 19434, -- Lock and Load -> Aimed Shot
	[199803] = { -- True Aim
		 19434, -- Aimed Shot
		185358, -- Arcane Shot
	},
	[201081] = 186270, -- Mok'Nathal Tactics -> Raptor Strike
	[201142] = 187650, -- Frozen Wake -> Freezing Trap
	[201158] = 187698, -- Super Sticky Tar -> Tar Trap
	[204321] = 202800, -- Instincts of the Raptor -> Flanking Strike
	[204324] = 202800, -- Instincts of the Cheetah -> Flanking Strike
	[204333] = 202800, -- Instincts of the Mongoose -> Flanking Strike
	[213424]= { -- Deadeye
		 19434, -- Aimed Shot
		185901, -- Marked Shot
	},
	[223138] = { -- Marking Targets
		  2643, -- Multi-Shot
		185358, -- Arcane Shot
		214579, -- Sidewinders
	},
})
