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
lib:__RegisterSpells("HUNTER", 70000, 4, {
	COOLDOWN = {
		   781, -- Disengage
		  1543, -- Flare
		 34026, -- Kill Command
		 53209, -- Chimaera Shot
		 63900, -- Thunderstomp (Tenacity)
		109304, -- Exhilaration
		120360, -- Barrage
		126393, -- Eternal Guardian (Quillen) (exotic)
		159931, -- Gift of Chi-Ji (Crane)
		198670, -- Head Shot
		200163, -- Throwing Axes
		201078, -- Snake Hunter
		201413, -- Stampede (FIXME: currently no duration buff)
		203415, -- Fury of the Eagle (SV artifact)
		204147, -- Windburst (MM artifact)
		212431, -- Explosive Shot
		212436, -- Butchery
		INTERRUPT = {
			147362, -- Counter Shot
			187707, -- Muzzle
		},
		AURA = {
			HELPFUL = {
				 53480, -- Roar of Sacrifice (Cunning)
				204477, -- Windburst (MM artifact)
				212640, -- Mending Bandage (PvP)
			},
			HARMFUL = {
				  2649, -- Growl (pet)
				  5116, -- Concussive Shot
				 13812, -- Explosive Trap
				 24394, -- Intimidation (stun)
				 35346, -- Warp Time (Warp Stalker) (slow)
				 50433, -- Ankle Crack (Crocolisk) (slow)
				 53148, -- Charge (stun) (pet)
				 54644, -- Frost Breath (Chimaera) (slow)
				 95809, -- Insanity (Core Hound)
				115804, -- Mortal Wounds (pet)
				117405, -- Binding Shot
				117526, -- Binding Shot (stun)
				131894, -- A Murder of Crows (BM/MM)
				135299, -- Tar Trap
				160065, -- Tendon Rip (Silithid) (exotic) (slow)
				160067, -- Web Spray (Spider)
				160455, -- Fatigued (Nether Ray)
				162487, -- Steel Trap (bleed)
				185855, -- Lacerate
				190927, -- Harpoon
				191397, -- Bestial Cunning
				191413, -- Bestial Ferocity
				191241, -- Sticky Bomb
				194279, -- Caltrops
				194599, -- Black Arrow
				194858, -- Dragonsfire Grenade
				195645, -- Wing Clip
				201142, -- Frozen Wake
				202914, -- Spider Sting (PvP)
				202933, -- Spider Sting (Silenced debuff) (PvP)
				204081, -- On the Trail
				206505, -- A Murder of Crows (SV)
				CROWD_CTL = {
					  3355, -- Freezing Trap (incapacitate)
					 19386, -- Wyvern Sting (incapacitate)
					162480, -- Steel Trap (root)
					191244, -- Sticky Bomb (knockback)
					201158, -- Super Sticky Tar (root)
					209790, -- Freezing Arrow (incapacitate) (PvP)
					212638, -- Tracker's Net (root) (PvP)
					213691, -- Scatter Shot (disorient) (PvP)
					224729, -- Bursting Shot (disorient)
				},
			},
			PERSONAL = {
				   5384, -- Feign Death
				  35079, -- Misdirection
				 118922, -- Posthaste
				 120694, -- Dire Beast
				 160007, -- Updraft (Rylak)
				 186257, -- Aspect of the Cheetah (90%)
				 186258, -- Aspect of the Cheetah (30%)
				 190515, -- Survival of the Fittest (MM artifact)
				 190931, -- Mongoose Fury
				 193530, -- Aspect of the Wild
				 194407, -- Spitting Cobra
				 197161, -- Mimiron's Shell (BM artifact)
				 198783, -- Camouflage (Marksmanship)
				 199483, -- Camouflage (Survival)
				 202748, -- Survival Tactics (PvP)
				 203155, -- Sniper Shot (PvP)
				 203924, -- Healing Shell (MM artifact)
				 209997, -- Play Dead
				[ 19574] = "BURST", -- Bestial Wrath
				[186265] = "SURVIVAL", -- Aspect of the Turtle
				[186289] = "BURST", -- Aspect of the Eagle
				[193526] = "BURST", -- Trueshot

			},
			PET = {
				    136, -- Mend Pet
				  19577, -- Intimidation
				  24450, -- Prowl (Cat)
				  26064, -- Shell Shield (Turtle)
				  53478, -- Last Stand (Tenacity)
				  54680, -- Monstrous Bite (Devilsaur) (exotic)
				  61684, -- Dash (Ferocity/Cunning)
				  61685, -- Charge (Tenacity)
				  63896, -- Bullheaded (Cunning)
				  90328, -- Spirit Walk (Spirit Beast) (exotic)
				  90339, -- Harden Carapace (Beetle)
				  93433, -- Burrow Attack (Worm) (exotic)
				 137798, -- Reflective Armor Plating (Direhorn)
				 159733, -- Stone Scales (Basilisk)
				 159926, -- Harden Shell (Crab)
				 159954, -- Feast (Devilsaur) (exotic)
				 160011, -- Agile Reflexes (Fox)
				 160044, -- Primal Agility (Monkey)
				 160063, -- Solid Shell (Shale Spider) (exotic)
				 191414, -- Bestial Tenacity
				 207094, -- Titan's Thunder (BM artifact)
				 211138, -- Hunter's Advantage (BM artifact)
				 217200, -- Dire Frenzy
				[ 90361] = "HELPFUL", -- Spirit Mend (Spirit Beast) (exotic)
			},
		},
	},
	AURA = {
		HARMFUL = {
			   1462, -- Beast Lore (NOTE: HELPFUL on player controlled pets, HARMFUL else)
			   1515, -- Tame Beast
			  63468, -- Careful Aim
			 118253, -- Serpent Sting
			 185365, -- Hunter's Mark
			 187131, -- Vulnurable
			 199803, -- True Aim
			 202797, -- Viper Sting (PvP)
			 202900, -- Scorpid Sting (PvP)
			 206755, -- Ranger's Net (slow)
			[200108] = "CROWD_CTL", -- Ranger's Net (root)
		},
		PERSONAL = {
			  6197, -- Eagle Eye
			 82921, -- Bombardment
			185791, -- Wild Call
			193534, -- Steady Focus
			194594, -- Lock and Load
			201081, -- Mok'Nathal Tactics
			204321, -- Instincts of the Raptor
			204324, -- Instincts of the Cheetah
			204333, -- Instincts of the Mongoose
			223138, -- Marking Targets
			227272, -- Trick Shot
		},
		PET = {
			 90347, -- Play (Fox)
			 92380, -- Froststorm Breath (Chimaera) (exotic)
			 94019, -- Rest (Bear)
			118455, -- Beast Cleave
			126311, -- Surface Trot (Water Strider) (exotic)
			126364, -- Rest (Porcupine)
		},
	},
	RAIDBUFF = {
		BURST_HASTE = {
			 90355, -- Ancient Hysteria (Core Hound)
			160452, -- Netherwinds (Nether Ray)
		},
	},
}, {
	-- map aura to provider(s)
	[  3355] = 187650, -- Freezing Trap
	[ 35079] = 34477, -- Misdirection
	[ 13812] = 191433, -- Explosive Trap
	[ 24394] = 19577, -- Intimidation (stun)
	[ 53148] = 61685, -- Charge (stun)
	[ 63468] = 53238, -- Careful Aim
	[ 63896] = 53490, -- Bullheaded (Cunning)
	[ 82921] = 35110, -- Bombardment
	[115804] = { -- Mortal Wounds
		 24423, -- Bloody Screech (Carrion Bird)
		160018, -- Gruesome Bite (Riverbeast)
		160060, -- Deadly Sting (Skorpid)
	},
	[117405] = 109248, -- Binding Shot
	[117526] = 109248, -- Binding Shot (stun)
	[118253] = 87935, -- Serpent Sting
	[118455] = 115939, -- Beast Cleave
	[118922] = 109215, -- Posthaste
	[120694] = 120679, -- Dire Beast
	[135299] = 187698, -- Tar Trap
	[159954] = 159953, -- Feast (Devilsaur) (exotic)
	[162480] = 162488, -- Steel Trap (root)
	[162487] = 162488, -- Steel Trap (bleed)
	[185365] = { -- Hunter's Mark
		185987, -- Hunter's Mark (passive)
		206817, -- Sentinel
	},
	[185791] = 185789, -- Wild Call
	[186258] = 186257, -- Aspect of the Cheetah
	[187131] = 185901, -- Vulnurable <- Marked Shot
	[190515] = 190514, -- Survival of the Fittest (MM artifact)
	[190927] = 190925, -- Harpoon
	[190931] = 190928, -- Mongoose Fury <- Mongoose Bite
	[191244] = 191241, -- Sticky Bomb (knockback)
	[191397] = 191384, -- Bestial Cunning <- Aspect of the Beast
	[191413] = 191384, -- Bestial Ferocity <- Aspect of the Beast
	[191414] = 191384, -- Bestial Tenacity <- Aspect of the Beast
	[193534] = 193533, -- Steady Focus
	[194279] = 194277, -- Caltrops
	[194594] = 194595, -- Lock and Load
	[194858] = 194855, -- Dragonsfire Grenade
	[197161] = 197160, -- Mimiron's Shell (BM artifact)
	[199803] = 199527, -- True Aim
	[201142] = 199543, -- Frozen Wake <- Expert Trapper
	[201158] = 199543, -- Super Sticky Tar <- Expert Trapper
	[201081] = 201082, -- Mok'Nathal Tactics <- Way of the Mok'Nathal
	[202748] = 202746, -- Survival Tactics (PvP)
	[202797] = 202793, -- Viper Sting (PvP)
	[202900] = 202901, -- Scorpid Sting (PvP)
	[203924] = 190503, -- Healing Shell (MM artifact)
	[202933] = 202914, -- Spider Sting (Silenced debuff) (PvP)
	[204081] = 203757, -- On the Trail <- Eagle's Bite (SV artifact)
	[204321] = 204315, -- Instincts of the Raptor <- Animal Instincts
	[204324] = 204315, -- Instincts of the Cheetah <- Animal Instincts
	[204333] = 204315, -- Instincts of the Mongoose <- Animal Instincts
	[204477] = 204147, -- Windburst (MM artifact)
	[206755] = 200108, -- Ranger's Net (slow)
	[207094] = 207068, -- Titan's Thunder (BM artifact)
	[209790] = 209789, -- Freezing Arrow (Incapacitate) (PvP)
	[211138] = 197178, -- Hunter's Advantage (BM artifact)
	[223138] = 185987, -- Marking Targets <- Hunter's Mark (passive)
	[224729] = 186387, -- Bursting Shot
	[227272] = 199522, -- Trick Shot
}, {
	-- map aura to modified spell(s)
	[ 63468] = { -- Careful Aim
		  2643, -- Multi-Shot
		 19434, -- Aimed Shot
		185358, -- Arcane Shot
		185901, -- Marked Shot
		214579, -- Sidewinders ??
	},
	[ 82921] = 2643, -- Bombardment -> Multi-Shot
	[118253] = { -- Serpent Sting
		186270, -- Raptor Strike
		187708, -- Carve
	},
	[118455] = 2643, -- Beast Cleave -> Multi-Shot
	[118922] = { -- Posthaste
		   781, -- Disengage
		190925, -- Harpoon
	},
	[185365] = { -- Hunter's Mark
		185901, -- Marked Shot
		206817, -- Sentinel
	},
	[185791] = { -- Wild Call
		120679, -- Dire Beast
		217200, -- Dire Frenzy
	},
	[187131] = { -- Vulnurable
		 19434, -- Aimed Shot
		185901, -- Marked Shot
	},
	[190515] = 781, -- Survival of the Fittest (MM artifact) -> Disengage
	[191397] = { -- Bestial Cunning
		 34026, -- Kill Command
		202800, -- Flanking Strike
	},
	[191413] = { -- Bestial Ferocity
		 34026, -- Kill Command
		202800, -- Flanking Strike
	},
	[191414] = { -- Bestial Tenacity
		 34026, -- Kill Command
		202800, -- Flanking Strike
	},
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
	[197161] = 186265, -- Mimiron's Shell (BM artifact) -> Aspect of the Turtle
	[199803] = { -- True Aim
		 19434, -- Aimed Shot
		185358, -- Arcane Shot
	},
	[201081] = 186270, -- Mok'Nathal Tactics -> Raptor Strike
	[201142] = 187650, -- Frozen Wake -> Freezing Trap
	[201158] = 187698, -- Super Sticky Tar -> Tar Trap
	[202748] = 5384, -- Survival Tactics -> Feign Death
	[202797] = { -- Viper Sting (PvP)
		 19434, -- Aimed Shot
		186270, -- Raptor Strike
		193455, -- Cobra Shot
	},
	[202900] = { -- Scorpid Sting (PvP)
		 19434, -- Aimed Shot
		186270, -- Raptor Strike
		193455, -- Cobra Shot
	},
	[203924] = 186265, -- Healing Shell (MM artifact) -> Aspect of the Turtle
	[204081] = { -- On the Trail
		  6603, -- Auto Attack
		190925, -- Harpoon
	},
	[204321] = 202800, -- Instincts of the Raptor -> Flanking Strike
	[204324] = 202800, -- Instincts of the Cheetah -> Flanking Strike
	[204333] = 202800, -- Instincts of the Mongoose -> Flanking Strike
	[209997] = 210000, -- Play Dead -> Wake Up
	[211138] = 34477, -- Hunter's Advantage (BM artifact) -> Misdirection
	[223138] = { -- Marking Targets
		  2643, -- Multi-Shot
		185358, -- Arcane Shot
		214579, -- Sidewinders
	},
	[227272] = 19434, -- Trick Shot -> Aimed Shot
})
