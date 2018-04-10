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
lib:__RegisterSpells("HUNTER", 70300, 2, {
	COOLDOWN = {
		    781, -- Disengage
		   1543, -- Flare
		  34026, -- Kill Command
		  53209, -- Chimaera Shot
		  63900, -- Thunderstomp (Tenacity)
		 109304, -- Exhilaration
		 120360, -- Barrage
		 126393, -- Eternal Guardian (Quillen) (exotic) (battle res)
		 159931, -- Gift of Chi-Ji (Crane) (battle res)
		 159956, -- Dust of Life (Moth) (battle res)
		 198670, -- Head Shot
		 200163, -- Throwing Axes
		 201078, -- Snake Hunter
		 201413, -- Stampede (FIXME: currently no duration buff)
		 203415, -- Fury of the Eagle (SV artifact)
		 204147, -- Windburst (MM artifact)
		 206817, -- Sentinel
		 208652, -- Dire Beast: Hawk (PvP)
		 212431, -- Explosive Shot
		 212436, -- Butchery
		[202746] = "DISPEL MAGIC PERSONAL", -- Survival Tactics (PvP)
		INTERRUPT = {
			147362, -- Counter Shot
			187707, -- Muzzle
		},
		AURA = {
			HELPFUL = {
				  53480, -- Roar of Sacrifice (Cunning)
				  90361, -- Spirit Mend (Spirit Beast) (exotic)
				 203233, -- Aspect of the Cheetah (PvP)
				 204477, -- Windburst (MM artifact)
				[212640] = "DISPEL DISEASE POISON", -- Mending Bandage (PvP) -- NOTE: bleeds currently not supported
			},
			HARMFUL = {
				  2649, -- Growl (pet) (taunt) NOTE: no DR
				 13812, -- Explosive Trap
				 53148, -- Charge (stun) (pet) NOTE: no DR
				 95809, -- Insanity (Core Hound)
				115804, -- Mortal Wounds (pet)
				117405, -- Binding Shot
				131894, -- A Murder of Crows (BM/MM)
				160455, -- Fatigued (Nether Ray)
				162487, -- Steel Trap (bleed)
				190927, -- Harpoon
				191244, -- Sticky Bomb (knockback)
				191397, -- Bestial Cunning
				191413, -- Bestial Ferocity
				191241, -- Sticky Bomb
				194599, -- Black Arrow
				194858, -- Dragonsfire Grenade
				202914, -- Spider Sting (PvP)
				202933, -- Spider Sting (Silenced debuff) (PvP)
				203268, -- Sticky Tar (PvP)
				204081, -- On the Trail
				206505, -- A Murder of Crows (SV)
				209967, -- Dire Beast: Basilisk (PvP)
				237338, -- Explosive Trap (melee miss effect)
				CROWD_CTRL = {
					DISORIENT = {
						213691, -- Scatter Shot (disorient) (PvP)
						224729, -- Bursting Shot (disorient)
					},
					INCAPACITATE = {
						  3355, -- Freezing Trap (incapacitate)
						 19386, -- Wyvern Sting (incapacitate)
						203337, -- Freezing Trap (incapacitate) (PvP)
						209790, -- Freezing Arrow (incapacitate) (PvP)
					},
					ROOT = {
						162480, -- Steel Trap (root)
						201158, -- Super Sticky Tar (root)
						212638, -- Tracker's Net (root) (PvP)
					},
					STUN = {
						 24394, -- Intimidation (stun)
						117526, -- Binding Shot (stun)
					},
				},
				SNARE = {
					  5116, -- Concussive Shot (slow)
					 35346, -- Warp Time (Warp Stalker) (slow)
					 50433, -- Ankle Crack (Crocolisk) (slow)
					 54644, -- Frost Breath (Chimaera) (slow)
					135299, -- Tar Trap (slow)
					160065, -- Tendon Rip (Silithid) (exotic) (slow)
					160067, -- Web Spray (Spider) (slow)
					194279, -- Caltrops (slow)
					195645, -- Wing Clip (slow)
					201142, -- Frozen Wake (slow)
					236699, -- Super Sticky Tar (slow)
				},
			},
			PERSONAL = {
				 35079, -- Misdirection
				 61648, -- Aspect of the Chameleon
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
				203924, -- Healing Shell (MM artifact)
				BURST = {
					 19574, -- Bestial Wrath
					186289, -- Aspect of the Eagle
					193526, -- Trueshot
				},
				SURVIVAL = {
					  5384, -- Feign Death
					186265, -- Aspect of the Turtle
					240777, -- Feet of Wind (MM artifact)
				},
			},
			PET = {
				   136, -- Mend Pet
				 19577, -- Intimidation
				 24450, -- Prowl (Cat)
				 54680, -- Monstrous Bite (Devilsaur) (exotic)
				 61684, -- Dash (Ferocity/Cunning)
				 61685, -- Charge (Tenacity)
				 90328, -- Spirit Walk (Spirit Beast) (exotic)
				 93433, -- Burrow Attack (Worm) (exotic)
				137798, -- Reflective Armor Plating (Direhorn)
				159954, -- Feast (Devilsaur) (exotic)
				191414, -- Bestial Tenacity
				207094, -- Titan's Thunder (BM artifact)
				211138, -- Hunter's Advantage (BM artifact)
				217200, -- Dire Frenzy
				SURVIVAL = {
					 26064, -- Shell Shield (Turtle)
					 53478, -- Last Stand (Tenacity)
					 63896, -- Bullheaded (Cunning)
					 90339, -- Harden Carapace (Beetle)
					159733, -- Stone Scales (Basilisk)
					159926, -- Harden Shell (Crab)
					160011, -- Agile Reflexes (Fox)
					160044, -- Primal Agility (Monkey)
					160048, -- Stone Armor (Quilen) (exotic)
					160063, -- Solid Shell (Shale Spider) (exotic)
					209997, -- Play Dead
				},
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
			 185855, -- Lacerate
			 187131, -- Vulnurable
			 199803, -- True Aim
			 202797, -- Viper Sting (PvP)
			 202900, -- Scorpid Sting (PvP)
			[200108] = "CROWD_CTRL ROOT", -- Ranger's Net (root)
			[206755] = "SNARE", -- Ranger's Net (slow)
		},
		PERSONAL = {
			  6197, -- Eagle Eye
			 82921, -- Bombardment
			185791, -- Wild Call
			193534, -- Steady Focus
			194594, -- Lock and Load
			201081, -- Mok'Nathal Tactics
			203155, -- Sniper Shot (PvP)
			223138, -- Marking Targets
			227272, -- Trick Shot
		},
		PET = {
			 90347, -- Play (Fox)
			 92380, -- Froststorm Breath (Chimaera) (exotic)
			 94019, -- Rest (Bear)
			118455, -- Beast Cleave
			126311, -- Surface Trot (Water Strider) (exotic)
			126364, -- Rest (Rodent)
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
	[160048] = 160049, -- Stone Armor (Quilen) (exotic)
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
	[203268] = 203264, -- Sticky Tar (PvP)
	[203924] = 190503, -- Healing Shell (MM artifact)
	[202933] = 202914, -- Spider Sting (Silenced debuff) (PvP)
	[203233] = 203235, -- Aspect of the Cheetah (PvP) <- Hunting Pack (PvP)
	[203337] = 203340, -- Freezing Trap (incapacitate) (PvP) <- Diamond Ice (PvP)
	[204081] = 203757, -- On the Trail <- Eagle's Bite (SV artifact)
	[204477] = 204147, -- Windburst (MM artifact)
	[206755] = 200108, -- Ranger's Net (slow)
	[207094] = 207068, -- Titan's Thunder (BM artifact)
	[209790] = 209789, -- Freezing Arrow (Incapacitate) (PvP)
	[209967] = 205691, -- Dire Beast: Basilisk (PvP)
	[211138] = 197178, -- Hunter's Advantage (BM artifact)
	[223138] = 185987, -- Marking Targets <- Hunter's Mark (passive)
	[224729] = 186387, -- Bursting Shot
	[227272] = 199522, -- Trick Shot
	[236699] = 234955, -- Super Sticky Tar (slow) <- Waylay
	[237338] = 234955, -- Explosive Trap <- Waylay
	[240777] = 238088, -- Feet of Wind (MM artifact)
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
	[185365] = 185901, -- Hunter's Mark -> Marked Shot
	[185791] = { -- Wild Call
		120679, -- Dire Beast
		217200, -- Dire Frenzy
	},
	[187131] = { -- Vulnurable
		 19434, -- Aimed Shot
		198670, -- Piercing Shot
	},
	[190515] = 781, -- Survival of the Fittest (MM artifact) -> Disengage
	[190931] = {
		190928, -- Mongoose Fury -> Mongoose Bite
		203415, -- Mongoose Fury -> Fury of the Eagle
	},
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
	[203233] = 186257, -- Aspect of the Cheetah (PvP)
	[203268] = { -- Sticky Tar (PvP)
		187698, -- Tar Trap
		194277, -- Caltrops
	},
	[203337] = 187650, -- Freezing Trap (incapacitate) (PvP)
	[203924] = 186265, -- Healing Shell (MM artifact) -> Aspect of the Turtle
	[204081] = { -- On the Trail
		  6603, -- Auto Attack
		190925, -- Harpoon
	},
	[209997] = 210000, -- Play Dead -> Wake Up
	[211138] = 34477, -- Hunter's Advantage (BM artifact) -> Misdirection
	[223138] = { -- Marking Targets
		  2643, -- Multi-Shot
		185358, -- Arcane Shot
		214579, -- Sidewinders
	},
	[227272] = 19434, -- Trick Shot -> Aimed Shot
	[236699] = 187698, -- Super Sticky Tar (slow) -> Tar Trap
	[237338] = 191433, -- Explosive Trap -> Explosive Trap
	[240777] = 186257, -- Feet of Wind (MM artifact) -> Aspect of the Cheetah
})
