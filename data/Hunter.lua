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
		  34026, -- Kill Command (Beast Mastery) 
		 109304, -- Exhilaration
		 120360, -- Barrage (Beast Mastery/Marksmanship talent)
		 120679, -- Dire Beast (Beast Mastery talent)
		 198670, -- Piercing Shot (Marksmanship talent)
		 201430, -- Stampede (Beast Mastery talent)
		 212431, -- Explosive Shot (Marksmanship talent)
		 212436, -- Butchery (Survival talent)
		 259391, -- Chakrams (Survival talent)
		[236776] = 'KNOCKBACK', -- Hi-Explosive Trap (honor talent)
		INTERRUPT = {
			147362, -- Counter Shot (Beast Mastery/Marksmanship)
			187707, -- Muzzle (Survival)
		},
		POWER_REGEN = {
			 53209, -- Chimaera Shot (Beast Mastery talent)
			257044, -- Rapid Fire (Marksmanship)
			259489, -- Kill Command (Survival)
			269751, -- Flanking Strike (Survival talent)
		},
		AURA = {
			HELPFUL = {
				  34477, -- Misdirection
				  53480, -- Roar of Sacrifice (honor talent)
				 203233, -- Aspect of the Cheetah (Survival honor talent)
				 248519, -- Interlope (Beast Mastery honor talent)
				[212640] = 'DISPEL DISEASE POISON', -- Mending Bandage (Survival honor talent) -- NOTE: Bleeds too
			},
			HARMFUL = {
				117405, -- Binding Shot (talent)
				131894, -- A Murder of Crows (talent)
				132951, -- Flare
				162487, -- Steel Trap (Survival talent)
				202797, -- Viper Sting (honor talent)
				202900, -- Scorpid Sting (honor talent)
				202914, -- Spider Sting (honor talent)
				203268, -- Sticky Tar (Survival honor talent)
				208684, -- Dire Beast: Hawk (Beast Mastery honor talent)
				209967, -- Dire Beast: Basilisk (Beast Mastery honor talent)
				217200, -- Barbed Shot (Beast Mastery)
				259277, -- Kill Command (Survival talent)
				269747, -- Wildfire Bomb (Survival)
				270332, -- Scorching Pheromones (Survival talent)
				270339, -- Scorching Shrapnel (Survival talent)
				271049, -- Volatile Wildfire (Survival talent)
				CROWD_CTRL = {
					INCAPACITATE = {
						  3355, -- Freezing Trap
						203337, -- Freezing Trap (Survival honor talent)
						213691, -- Scatter Shot (Marksmanship honor talent)
					},
					ROOT = {
						117526, -- Binding Shot (talent)
						162480, -- Steel Trap (Survival talent)
						190927, -- Harpoon (Survival)
						212638, -- Tracker's Net (Survival honor talent)
					},
					STUN = {
						24394, -- Intimidation (Beast Mastery/Survival)
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
				118922, -- Posthaste (talent)
				186257, -- Aspect of the Cheetah (90%)
				186258, -- Aspect of the Cheetah (30%)
				186289, -- Aspect of the Eagle (Survival)
				199483, -- Camouflage (talent)
				203155, -- Sniper Shot (Marksmanship honor talent)
				257946, -- Thrill of the Hunt (Beast Mastery talent)
				260242, -- Precise Shots (Marksmanship)
				260249, -- Predator (Survival talent)
				260402, -- Double Tap (Marksmanship talent)
				260286, -- Tip of the Spear (Survival talent)
				269576, -- Master Marksman (Marksmanship talent)
				BURST = {
					 19574, -- Bestial Wrath (Beast Mastery)
					193526, -- Trueshot (Marksmanship)
					193530, -- Aspect of the Wild (Beast Mastery)
					266779, -- Coordinated Assault (Survival)
				},
				POWER_REGEN = {
					194407, -- Spitting Cobra (Beast Mastery talent)
					246152, -- Barbed Shot (Beast Mastery)
					265898, -- Terms of Engagement (Survival talent)
				},
				SURVIVAL = {
					186265, -- Aspect of the Turtle
				},
			},
			PET = {
				   136, -- Mend Pet
				 19577, -- Intimidation (Beast Mastery/Survival)
				118455, -- Beast Cleave (Beast Mastery)
				186254, -- Bestial Wrath (Beast Mastery)
				272790, -- Dire Frenzy (Beast Mastery)
			}
		},
	},
	AURA = {
		HARMFUL = {
			 257284, -- Hunter's Mark (Marksmanship talent)
			 259491, -- Serpent Sting (Survival)
			 270343, -- Internal Bleeding (Survival talent)
			 271788, -- Serpent Sting (Marksmanship talent)
			[195645] = 'SNARE', -- Wing Clip (Survival)
		},
		PERSONAL = {
			  6197, -- Eagle Eye
			193534, -- Steady Focus (Marksmanship talent)
			194594, -- Lock and Load (Marksmanship talent)
			257622, -- Trick Shots (Marksmanship)
			259388, -- Mongoose Bite (Survival talent)
			260395, -- Lethal Shots (Marksmanship)
			268552, -- Viper's Venom (Survival talent)
			269502, -- Lethal Shots (Marksmanship talent)
		},
	},
	POWER_REGEN = {
		56641, -- Steady Shot (Marksmanship)
	}
}, {
	-- map aura to provider(s)
	[  3355] = 187650, -- Freezing Trap
	[ 24394] =  19577, -- Intimidation (Beast Mastery/Survival)
	[ 35079] =  34477, -- Misdirection
	[117405] = 109248, -- Binding Shot (talent)
	[117526] = 109248, -- Binding Shot (root) (talent)
	[118455] = 115939, -- Beast Cleave (Beast Mastery)
	[118922] = 109215, -- Posthaste (talent)
	[132951] =   1543, -- Flare
	[135299] = 187698, -- Tar Trap
	[162480] = 162488, -- Steel Trap (root) (Survival talent)
	[162487] = 162488, -- Steel Trap (Survival talent)
	[186254] =  19574, -- Bestial Wrath (Beast Mastery)
	[186258] = 186257, -- Aspect of the Cheetah
	[190927] = 190925, -- Harpoon (Survival)
	[193534] = 193533, -- Steady Focus (Marksmanship talent)
	[194594] = 194595, -- Lock and Load (Marksmanship talent)
	[203233] = 203235, -- Aspect of the Cheetah (Survival honor talent) -- BUG: does not appear in the spellbook
	[203268] = 203264, -- Sticky Tar (Survival honor talent)
	[203337] = 203340, -- Freezing Trap (Survival honor talent) <- Diamond Ice -- BUG: does not appear in the spellbook
	[208684] = 208652, -- Dire Beast: Hawk (Beast Mastery honor talent)
	[209967] = 205691, -- Dire Beast: Basilisk (Beast Mastery honor talent)
	[213691] = 186387, -- Scatter Shot (Marksmanship honor talent)
	[246152] = 217200, -- Barbed Shot (Beast Mastery)
	[248519] = 248518, -- Interlope (Beast Mastery honor talent)
	[257622] = 257621, -- Trick Shots (Marksmanship)
	[257946] = 257944, -- Thrill of the Hunt (Beast Mastery talent)
	[259388] = 259387, -- Mongoose Bite (Survival talent)
	[259277] = 260248, -- Kill Command (Survival talent) <- Bloodseeker
	[260242] = 260240, -- Precise Shots (Marksmanship)
	[260249] = 260248, -- Predator (Survival talent) <- Bloodseeker
	[260395] = 260393, -- Lethal Shots (Marksmanship talent)
	[265898] = 265895, -- Terms of Engagement (Survival talent)
	[260286] = 260285, -- Tip of the Spear (Survival talent)
	[268552] = 268501, -- Viper's Venom (Survival talent)
	[269502] = 260393, -- Lethal Shots (Marksmanship talent)
	[269576] = 260309, -- Master Marksman (Marksmanship talent)
	[269747] = 259495, -- Wildfire Bomb (Survival)
	[270332] = 271014, -- Scorching Pheromones (Survival talent) <- Wildfire Infusion
	[270339] = 271014, -- Scorching Shrapnel (Survival talent) <- Wildfire Infusion
	[270343] = 271014, -- Internal Bleeding (Survival talent) <- Wildfire Infusion
	[271049] = 271014, -- Volatile Wildfire (Survival talent) <- Wildfire Infusion
	[272790] = 217200, -- Dire Frenzy <- Barbed Shot (Beast Mastery)
}, {
	-- map aura to modified spell(s)
	[118455] =  2643, -- Beast Cleave (Beast Mastery) -> Multi-Shot
	[118922] =   781, -- Posthaste (talent) -> Disengage
	[193534] = 56641, -- Steady Focus (Marksmanship talent) -> Steady Shot
	[194594] = 19434, -- Lock and Load (Marksmanship talent) -> Aimed Shot
	[203233] = 186257, -- Aspect of the Cheetah (Survival honor talent)
	[203268] = 187698, -- Sticky Tar (Survival honor talent) -> Tar Trap
	[203337] = 187650, -- Freezing Trap (Survival honor talent)
	[257622] = { -- Trick Shots (Marksmanship)
		 19434, -- Aimed Shot
		257044, -- Rapid Fire
	},
	[257946] = 217200, -- Thrill of the Hunt (Beast Mastery talent) -> Barbed Shot
	[259277] = 259489, -- Kill Command (Survival talent)
	[260242] = 185358, -- Precise Shots (Marksmanship) -> Arcane Shot
	[260249] = 259489, -- Predator (Survival talent) -> Kill Command
	[260286] = 186270, -- Tip of the Spear (Survival talent) -> Raptor Strike
	[260395] = 257044, -- Lethal Shots (Marksmanship talent) -> Rapid Fire
	[260402] = { -- Double Tap (Marksmanship talent)
		 19434, -- Aimed Shot
		257044, -- Rapid Fire
	},
	[265898] = 190925, -- Terms of Engagement (Survival talent) -> Harpoon
	[268552] = 259491, -- Viper's Venom (Survival talent) -> Serpent Sting
	[269502] = 19434, -- Lethal Shots (Marksmanship talent) -> Aimed Shot
	[269576] = { -- Master Marksman (Marksmanship talent)
		185358, -- Arcane Shot
		267620, -- Multi-Shot
	},
	[270332] = 270323, -- Scorching Pheromones (Survival talent) -> Pheromone Bomb
	[270339] = 270335, -- Scorching Shrapnel (Survival talent) -> Shrapnel Bomb
	[270343] = { -- Internal Bleeding (Survival talent)
		186270, -- Raptor Strike
		212436, -- Butchery (Survival talent)
		259387, -- Mongoose Bite (Survival talent)
	},
	[271049] = 271045, -- Volatile Wildfire (Survival talent) -> Volatile Bomb
})
