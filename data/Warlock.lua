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
lib:__RegisterSpells("WARLOCK", 70300, 2, {
	COOLDOWN = {
		   698, -- Ritual of Summoning
		  1122, -- Summon Infernal
		  6360, -- Whiplash (Succubus) (knockback)
		 17962, -- Conflagrate
		 18540, -- Summon Doomguard
		 29893, -- Create Soulwell
		 89792, -- Flee (Imp)
		104316, -- Call Dreadstalkers
		119909, -- Whiplash (Command Demon with Succubus) (knockback)
		152108, -- Cataclysm
		196586, -- Dimensional Rift (Destruction artifact)
		205180, -- Summon Darkglare
		211714, -- Thal'kiel's Consumption (Demonology artifact)
		DISPEL = {
			MAGIC = {
				[ 89808] = "HELPFUL", -- Singe Magic (Imp)
				[111859] = "PERSONAL", -- Grimoire: Imp
				[171021] = "HARMFUL", -- Torch Magic (Infernal with Grimoire of Supremacy)
				[212623] = "HELPFUL", -- Singe Magic (PvP)
			},
		},
		INTERRUPT = {
			 19647, -- Spell Lock (Felhunter)
			111897, -- Grimoire: Felhunter
			119910, -- Spell Lock (Comand Demon with Felhunter)
			171138, -- Shadow Lock (Doomguard with Grimoire of Supremacy)
			171140, -- Shadow Lock (Command Demon with Doomguard)
		},
		AURA = {
			HELPFUL = {
				[ 20707] = "UNIQUE_AURA", -- Soulstone (battle res)
				[113942] = "INVERT_AURA UNIQUE_AURA", -- Demonic Gateway
			},
			HARMFUL = {
				  17735, -- Suffering (Voidwalker)
				  48181, -- Haunt
				  80240, -- Havoc
				 171014, -- Seeth (Infernal with Grimoire of Supremacy)
				 205179, -- Phantom Singularity
				 205181, -- Shadowflame
				[170995] = "SNARE", -- Criple (Doomguard with Grimoire of Supremacy) (slow)
				CROWD_CTRL = {
					[6789] = "INCAPACITATE", -- Mortal Coil (incapacitate)
					DISORIENT = {
						5484, -- Howl of Terror (disorient)
						6358, -- Seduction (Succubus) (disorient)
					},
					STUN = {
						 22703, -- Infernal Awakening (Infernal) (stun)
						 30283, -- Shadowfury (stun)
						 89766, -- Axe Toss (Felguard) (stun)
						171017, -- Meteor Strike (Infernal with Grimoire of Supremacy) (stun)
					},
				},
			},
			PERSONAL = {
				  48018, -- Demonic Circle
				 117828, -- Backdraft
				 119899, -- Cauterize Master (Imp)
				 196546, -- Conflagration of Chaos (Destruction artifact)
				 196099, -- Demonic Power
				 196674, -- Planeswalker (Destruction artifact)
				 215165, -- Devourer of Life (Destruction artifact)
				 216708, -- Deadwind Harvester (Affliction artifact)
				[196098] = "BURST", -- Soul Harvest
				SURVIVAL = {
					104773, -- Unending Resolve
					108416, -- Dark Pact
				},
			},
			PET = {
				  755, -- Health Funnel
				17767, -- Shadow Bulwark (Voidwalker)
				30151, -- Pursuit (Felguard)
				89751, -- Felstorm (Felguard)
			},
		},
	},
	AURA = {
		HELPFUL = {
			5697, -- Unending Breath
		},
		HARMFUL = {
			   603, -- Doom
			   980, -- Agony
			 27243, -- Seed of Corruption
			 30213, -- Legion Strike (Felguard)
			 63106, -- Siphon Life
			146739, -- Curruption
			157736, -- Immolate
			196414, -- Eradication
			198590, -- Drain Soul
			233490, -- Unstable Affliction
			233496, -- Unstable Affliction
			233497, -- Unstable Affliction
			233498, -- Unstable Affliction
			233499, -- Unstable Affliction
			234153, -- Drain Life
			242922, -- Jaws of Shadow (Demonology artifact) -- TODO: debuff on enemy?
			CROWD_CTRL = {
				[   710] = "INCAPACITATE", -- Banish (incapacitate)
				[118699] = "DISORIENT", -- Fear (disorient)
			},
		},
		PERSONAL = {
			    126, -- Eye of Kilrogg
			 111400, -- Burning Rush
			 193440, -- Demonwrath
			 196304, -- Eternal Struggle (Destruction artifact)
			 196606, -- Shadowy Inspiration
			 199281, -- Compounding Horror (Affliction  artifact)
			 205146, -- Demonic Calling
			 211583, -- Stolen Power (Demonology artifact)
			[235156] = "BURST", -- Empowered Life Tap
		},
		PET = {
			   7870, -- Lesser Invisibility (Succubus)
			 112042, -- Threatening Presence (Voidwalker)
			 134477, -- Threatening Presence (Felguard)
			 171011, -- Burning Presence (Infernal with Grimoire of Supremacy)
			 193396, -- Demonic Empowerment
			[  1098] = "INVERT_AURA", -- Enslave Demon
		},
	},
}, {
	-- map aura to provider(s)
	[  6358] = { -- Seduction (Succubus) (disorient)
		  6358, -- Seduction (Succubus)
		111896, -- Grimoire: Succubus
	},
	[ 17735] = { -- Suffering (Voidwalker)
		 17735, -- Suffering (Voidwalker)
		111895, -- Grimoire: Voidwalker
		119907, -- Suffering (Command Demon with Voidwalker)
	},
	[ 22703] = 1122, -- Infernal Awakening (stun) <- Summon Infernal
	[ 89751] = { -- Felstorm (Felguard)
		 89751, -- Felstorm (Felguard)
		119914, -- Felstorm (Command Demon with Felguard)
	},
	[89766] = { -- Axe Toss (Felguard) (stun)
		 89766, -- Axe Toss (Felguard)
		111898, -- Grimoire: Felguard
	},
	[113942] = 111771, -- Demonic Gateway
	[117828] = 196406, -- Backdraft
	[118699] = 5782, -- Fear (disorient)
	[119899] = { -- Cauterize Master (Imp)
		119899, -- Cauterize Master (Imp)
		119905, -- Cauterize Master (Command Demon with Imp)
	},
	[146739] = 172, -- Curruption
	[157736] = 348, -- Immolate
	[171017] = { -- Meteor Strike (stun) (Infernal with Grimoire of Supremacy)
		171017, -- Meteor Strike (Infernal with Grimoire of Supremacy)
		171152, -- Meteor Strike (Command Demon with Infernal)
	},
	[196099] = 108503, -- Demonic Power <- Grimoire of Sacrifice
	[196304] = 196305, -- Eternal Struggle (Destruction artifact)
	[196414] = 196412, -- Eradication
	[196546] = 219195, -- Conflagration of Chaos (Destruction artifact)
	[196606] = 196269, -- Shadowy Inspiration
	[196674] = 196675, -- Planeswalker (Destruction artifact)
	[199281] = 199282, -- Compounding Horror (Affliction artifact)
	[205146] = 205145, -- Demonic Calling
	[211583] = 211530, -- Stolen Power (Demonology artifact)
	[215165] = 196301, -- Devourer of Life (Destruction artifact)
	[216708] = 216698, -- Deadwind Harvester (Affliction artifact) <- Reap Souls
	[233490] = 30108, -- Unstable Affliction
	[233496] = 30108, -- Unstable Affliction
	[233497] = 30108, -- Unstable Affliction
	[233498] = 30108, -- Unstable Affliction
	[233499] = 30108, -- Unstable Affliction
	[235156] = 235157, -- Empowered Life Tap
	[242922] = 238109, -- Jaws of Shadow (Demonology artifact) -- TODO: debuff on enemy?
}, {
	-- map aura to modified spell(s)
	[ 48018] = 48020, -- Demonic Circle -> Demonic Circle (Teleport)
	[117828] = { -- Backdraft
		 29722, -- Incinerate
		116858, -- Chaos Bolt
	},
	[196304] = 1454, -- Eternal Struggle (Destruction artifact) -> Life Tap
	[196414] = 116858, -- Eradication -> Chaos Bolt
	[196546] = { -- Conflagration of Chaos (Destruction artifact)
		17877, -- Shadowburn
		17962, -- Conflagration
	},
	[196606] = { -- Shadowy Inspiration
		   686, -- Shadow Bolt
		157695, -- Demonbolt
	},
	[196674] = 111771, -- Planeswalker (Destruction artifact) -> Demonic Gateway
	[199281] = 30108, -- Compounding Horror (Affliction artifact) -> Unstable Affliction
	[205146] = 104316, -- Demonic Calling -> Call Dreadstalkers
	[211583] = { -- Stolen Power (Demonology artifact)
		   686, -- Shadow Bolt
		157695, -- Demonbolt
	},
	[215165] = 234153, -- Devourer of Life (Destruction artifact) -> Drain Life
	[235156] = 1454, -- Empowered Life Tap -> Life Tap
})
