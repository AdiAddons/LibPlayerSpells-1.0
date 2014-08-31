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
lib:__RegisterSpells("WARLOCK", "50400", 6, {
	COOLDOWN = {
		  1122, -- Summon Infernal
		 18540, -- Summon Doomguard
		 29858, -- Soulshatter
		105174, -- Hand of Gul'dan
		108482, -- Unbound Will
		108501, -- Grimoire of Service
		114175, -- Demonic Slash (Dark Apotheosis)
		114189, -- Health Funnel (glyphed)
		120451, -- Flames of Xoroth
		INTERRUPT = {
			 19647, -- Spell Lock (felhunter)
			103967, -- Carrion Swarm (demon form)
			119911, -- Optical Blast (observer)
			132409, -- Spell Lock (sacrified felhunter)
		},
		AURA = {
			PERSONAL = {
				  48018, -- Demonic Circle: Summon
				  48020, -- Demonic Circle: Teleport
				 104025, -- Immolation Aura (Metamorphosis/Dark Apotheosis)
				 108503, -- Grimoire of Sacrifice (talent)
				 116198, -- Aura of Enfeeblement (Metamorphosis/Dark Apotheosis)
				[  1454] = "INVERT_AURA", -- Life Tap
				   1949, -- Hellfire
				SURVIVAL = {
					  6229, -- Twilight Ward
					104773, -- Unending Resolve
					108359, -- Dark Regeneration
					108416, -- Sacrificial Pact
					110913, -- Dark Bargain
					119839, -- Fury Ward (Dark Apotheosis)
					132413, -- Shadow Bulwark (Grimoire of Sacrifice)
				},
				BURST = {
					 80240, -- Havoc
					108508, -- Mannoroth's Fury (talent)
					113858, -- Dark Soul: Instability
					113860, -- Dark Soul: Misery
					113861, -- Dark Soul: Knowledge
				},
			},
			HELPFUL = {
				[20707] = "UNIQUE_AURA", -- Soulstone
			},
			HARMFUL = {
				  5484, -- Howl of Terror
				  6789, -- Mortal Coil
				 17962, -- Conflagrate
				 30283, -- Shadowfury
				 47897, -- Demonic Breath
				111397, -- Blood Horror
				124915, -- Chaos Wave (Metamorphosis)
			},
		},
	},
	AURA = {
		PERSONAL = {
			104232, -- Rain of fire
			108559, -- Demonic Rebirth
			108563, -- Backlash
			111400, -- Burning Rush (talent)
			114635, -- Ember Tap
			117828, -- Backdraft (buff)
			122351, -- Molten Core
		},
		HELPFUL = {
			[5697] = "UNIQUE_AURA", -- Unending Breath
		},
		PET = {
			    755, -- Health Funnel
			  [1098] = "INVERT_AURA", -- Enslave Demon
		},
		HARMFUL = {
			146739, -- Corruption
			   348, -- Immolate
			   603, -- Metamorphosis: Doom
			   980, -- Agony
			 27243, -- Seed of Corruption
			 29341, -- Shadowburn (debuff)
			 30108, -- Unstable Affliction
			 47960, -- Shadowflame
			 48181, -- Haunt
			108686, -- Immolate (Fire and Brimstone)
		},
	},
	RAIDBUFF = {
		[109773] = "SPL_POWER STAMINA", -- Dark Intent
	},
	DISPEL = {
		[19505] = "HARMFUL", -- Devour Magic (Felhunter)
		["COOLDOWN HELPFUL"] = {
		     89808, -- Singe Magic (imp)
			132411, -- Singe Magic (sacrified imp)
		},
	},
}, {
	-- Map aura to provider
	[146739] =    172, -- Corruption
	[ 29341] =  17877, -- Shadowburn
	[ 47960] = 105174, -- Shadowflame <= Hand of Gul'dan
	[117828] = 117896, -- Backdraft
	[124915] = 124916, -- Chaos Wave (Metamorphosis)
}, {
	-- Map aura to modified spell(s)
	[108563] = { -- Backlash =>
		 29722, -- Incinerate
		114654, -- Incinerate (Fire and Brimstone)
	},
	[117828] = { -- Backdraft =>
		 29722, -- Incinerate
		114654, -- Incinerate (Fire and Brimstone)
	},
	[122351] = 6353, -- Molten Core => Soul Fire
})
