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
		 259489, -- Kill Command (Survival)
		[236776] = 'KNOCKBACK', -- Hi-Explosive Trap (honor talent)
		INTERRUPT = {
			147362, -- Counter Shot (Beast Mastery/Marksmanship)
			187707, -- Muzzle (Survival)
		},
		POWER_REGEN = {
			 53209, -- Chimaera Shot (Beast Mastery talent)
			257044, -- Rapid Fire (Marksmanship)
		},
		AURA = {
			HELPFUL = {
				 34477, -- Misdirection
				 53480, -- Roar of Sacrifice (honor talent)
				248519, -- Interlope (Beast Mastery honor talent)
			},
			HARMFUL = {
				117405, -- Binding Shot (Beast Mastery/Marksmanship talent)
				131894, -- A Murder of Crows (Beast Mastery/Marksmanship talent)
				132951, -- Flare
				202797, -- Viper Sting (honor talent)
				202900, -- Scorpid Sting (honor talent)
				202914, -- Spider Sting (honor talent)
				208684, -- Dire Beast: Hawk (Beast Mastery honor talent)
				209967, -- Dire Beast: Basilisk (Beast Mastery honor talent)
				269747, -- Wildfire Bomb (Survival)
				217200, -- Barbed Shot (Beast Mastery)
				CROWD_CTRL = {
					INCAPACITATE = {
						  3355, -- Freezing Trap
						213691, -- Scatter Shot (Marksmanship honor talent)
					},
					ROOT = {
						117526, -- Binding Shot (Beast Mastery/Marksmanship talent)
						190927, -- Harpoon (Survival)
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
				118922, -- Posthaste (Beast Mastery/Marksmanship talent)
				186257, -- Aspect of the Cheetah
				186258, -- Aspect of the Cheetah
				186289, -- Aspect of the Eagle (Survival)
				199483, -- Camouflage (Beast Mastery/Marksmanship talent)
				203155, -- Sniper Shot (Marksmanship honor talent)
				257946, -- Thrill of the Hunt (Beast Mastery talent)
				260242, -- Precise Shots (Marksmanship)
				260402, -- Double Tap (Marksmanship talent)
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
			195645, -- Wing Clip (Survival)
			257284, -- Hunter's Mark (Marksmanship talent)
			259491, -- Serpent Sting (Survival)
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
	POWER_REGEN = {
		56641, -- Steady Shot (Marksmanship)
	}
}, {
	-- map aura to provider(s)
	[  3355] = 187650, -- Freezing Trap
	[ 24394] =  19577, -- Intimidation (Beast Mastery/Survival)
	[ 35079] =  34477, -- Misdirection
	[117405] = 109248, -- Binding Shot (Marksmanship talent)
	[117526] = 109248, -- Binding Shot (Marksmanship talent)
	[118455] = 115939, -- Beast Cleave (Beast Mastery)
	[118922] = 109215, -- Posthaste (Marksmanship talent)
	[132951] =   1543, -- Flare
	[135299] = 187698, -- Tar Trap
	[186254] =  19574, -- Bestial Wrath (Beast Mastery)
	[186258] = 186257, -- Aspect of the Cheetah
	[190927] = 190925, -- Harpoon (Survival)
	[193534] = 193533, -- Steady Focus (Marksmanship talent)
	[194594] = 194595, -- Lock and Load (Marksmanship talent)
	[208684] = 208652, -- Dire Beast: Hawk (Beast Mastery honor talent)
	[209967] = 205691, -- Dire Beast: Basilisk (Beast Mastery honor talent)
	[213691] = 186387, -- Scatter Shot (Marksmanship honor talent)
	[246152] = 217200, -- Barbed Shot (Beast Mastery)
	[248519] = 248518, -- Interlope (Beast Mastery honor talent)
	[257622] = 257621, -- Trick Shots (Marksmanship)
	[257946] = 257944, -- Thrill of the Hunt (Beast Mastery talent)
	[260242] = 260240, -- Precise Shots (Marksmanship)
	[260395] = 260393, -- Lethal Shots (Marksmanship talent)
	[269502] = 260393, -- Lethal Shots (Marksmanship talent)
	[269576] = 260309, -- Master Marksman (Marksmanship talent)
	[269747] = 259495, -- Wildfire Bomb (Survival)
	[272790] = 217200, -- Dire Frenzy <- Barbed Shot (Beast Mastery)
}, {
	-- map aura to modified spell(s)
	[118455] =  2643, -- Beast Cleave (Beast Mastery) -> Multi-Shot
	[118922] =   781, -- Posthaste (Marksmanship talent) -> Disengage
	[193534] = 56641, -- Steady Focus (Marksmanship talent) -> Steady Shot
	[194594] = 19434, -- Lock and Load (Marksmanship talent) -> Aimed Shot
	[257622] = { -- Trick Shots (Marksmanship)
		 19434, -- Aimed Shot
		257044, -- Rapid Fire
	},
	[257946] = 217200, -- Thrill of the Hunt (Beast Mastery talent) -> Barbed Shot
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
