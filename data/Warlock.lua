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
lib:__RegisterSpells("WARLOCK", "60100", 4, {
	COOLDOWN = {
		  1122, -- Summon Infernal
		 18540, -- Summon Doomguard
		 29858, -- Soulshatter
		105174, -- Hand of Gul'dan
		108482, -- Unbound Will
		108501, -- Grimoire of Service
		114189, -- Health Funnel (glyphed)
		120451, -- Flames of Xoroth
		INTERRUPT = {
			 19647, -- Spell Lock (felhunter)
			119911, -- Optical Blast (observer)
			132409, -- Spell Lock (sacrificed felhunter)
		},
		AURA = {
			PERSONAL = {
				  48018, -- Demonic Circle: Summon
				  48020, -- Demonic Circle: Teleport
				 104025, -- Immolation Aura (Metamorphosis/Dark Apotheosis)
				 108503, -- Grimoire of Sacrifice (talent)
				 137587, -- Kil'jaeden's Cunning
				[  1454] = "INVERT_AURA", -- Life Tap
				   1949, -- Hellfire
				SURVIVAL = {
					104773, -- Unending Resolve
					108359, -- Dark Regeneration
					108416, -- Sacrificial Pact
					110913, -- Dark Bargain
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
				111397, -- Blood Horror
				124915, -- Chaos Wave (Metamorphosis)
				157736, -- Immolate (debuff)
			},
		},
	},
	AURA = {
		PERSONAL = {
			   126, -- Eye of Kilrogg
			 74434, -- Soulburn
			104232, -- Rain of fire
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
			[ 1098] = "INVERT_AURA", -- Enslave Demon
		},
		HARMFUL = {
			   603, -- Metamorphosis: Doom
			   689, -- Drain Life
			   980, -- Agony
			 27243, -- Seed of Corruption
			 29341, -- Shadowburn (debuff)
			 30108, -- Unstable Affliction
			 47960, -- Shadowflame
			 48181, -- Haunt
			103103, -- Drain Soul
			105174, -- Hand of Gul'dan
			124916, -- Metamorphosis: Chaos Wave
			146739, -- Corruption
			157736, -- Immolate (debuff)
		},
	},
	RAIDBUFF = {
		[109773] = "SPL_POWER MULTISTRIKE", -- Dark Intent
		[166928] = "STAMINA",               -- Blood Pact
	},
}, {
	-- Map aura to provider
	[ 17962] = { -- Conflagrate
		 17962, -- Conflagrate
		108685, -- Conflagrate (Fire and Brimstone)
	},
	[ 47960] = 105174, -- Hand of Gul'dan
	[117828] = 117896, -- Backdraft (buff) <- Backdraft (passive)
	[124915] = 124916, -- Metamorphosis: Chaos Wave
	[146739] =    172, -- Corruption
	[157736] = { -- Immolate (debuff)
		   348, -- Immolate
		108686, -- Immolate (Fire and Brimstone)
	},
}, {
	-- Map aura to modified spell(s)
	[117828] = { -- Backdraft (buff)
		29722,  -- Incinerate
		114654, -- Incinerate (Fire and Brimstone)
	},
})
