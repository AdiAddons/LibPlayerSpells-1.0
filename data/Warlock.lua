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
lib:__RegisterSpells("WARLOCK", 70000, 1, {
	COOLDOWN = {
		    698, -- Ritual of Summoning
		   1122, -- Summon Infernal
		   6360, -- Whiplash (Succubus) (knockback)
		  17962, -- Conflagrate
		  18540, -- Summon Doomguard
		  29893, -- Create Soulwell
		  89792, -- Flee (Imp)
		 119909, -- Whiplash (Command Demon with Succubus) (knockback)
		 152108, -- Cataclysm
		DISPEL = {
			[171021] = "HARMFUL", -- Torch Magic (Infernal with Grimoire of Supremacy)
			HELPFUL = {
				 89808, -- Singe Magic (Imp)
				111859, -- Grimoire: Imp (NOTE: this one is personal only)
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
				[ 20707] = "UNIQUE_AURA", -- Soulstone
				[113942] = "INVERT_AURA UNIQUE_AURA", -- Demonic Gateway
			},
			HARMFUL = {
				 17735, -- Suffering (Voidwalker)
				 80240, -- Havoc
				170995, -- Criple (Doomguard with Grimoire of Supremacy) (slow)
				171014, -- Seeth (Infernal with Grimoire of Supremacy)
				CROWD_CTL = {
					  6358, -- Seduction (Succubus) (disorient)
					  6789, -- Mortal Coil (incapacitate)
					 22703, -- Infernal Awakening (Infernal) (stun)
					 30283, -- Shadowfury (stun)
					171017, -- Meteor Strike (stun) (Infernal with Grimoire of Supremacy)
				},
			},
			PERSONAL = {
				  48018, -- Demonic Circle
				 117828, -- Backdraft
				 119899, -- Cauterize Master (Imp)
				 196099, -- Demonic Power
				[196098] = "BURST", -- Soul Harvest
				SURVIVAL = {
					104773, -- Unending Resolve
					108416, -- Dark Pact
				},
			},
			PET = {
				  755, -- Health Funnel
				17767, -- Shadow Bulwark (Voidwalker)
			},
		},
	},
	AURA = {
		HELPFUL = {
			5697, -- Unending Breath
		},
		HARMFUL = {
			   689, -- Drain Life
			157736, -- Immolate
			196414, -- Eradication
			CROWD_CTL = {
				   710, -- Banish (incapacitate)
				118699, -- Fear (disorient)
			},
		},
		PERSONAL = {
			    126, -- Eye of Kilrogg
			 111400, -- Burning Rush
			[196104] = "BURST", -- Mana Tap
		},
		PET = {
			   7870, -- Lesser Invisibility (Succubus)
			 112042, -- Threatening Presence (Voidwalker)
			 171011, -- Burning Presence (Infernal with Grimoire of Supremacy)
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
	[113942] = 111771, -- Demonic Gateway
	[117828] = 196406, -- Backdraft
	[118699] = 5782, -- Fear (disorient)
	[119899] = { -- Cauterize Master (Imp)
		119899, -- Cauterize Master (Imp)
		119905, -- Cauterize Master (Command Demon with Imp)
	},
	[157736] = 348, -- Immolate
	[171017] = { -- Meteor Strike (stun) (Infernal with Grimoire of Supremacy)
		171017, -- Meteor Strike (Infernal with Grimoire of Supremacy)
		171152, -- Meteor Strike (Command Demon with Infernal)
	},
	[196099] = 108503, -- Demonic Power <- Grimoire of Sacrifice
	[196414] = 196412, -- Eradication
}, {
	-- map aura to modified spell(s)
	[ 48018] = 48020, -- Demonic Circle -> Demonic Circle (Teleport)
	[117828] = { -- Backdraft
		 29722, -- Incinerate
		116858, -- Chaos Bolt
	},
	[196414] = 116858, -- Eradication -> Chaos Bolt
})
