--[[
LibPlayerSpells-1.0 - Additional information about player spells.
(c) 2013 Adirelle (adirelle@gmail.com)

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
lib:__RegisterSpells("DRUID", "50400", 5, {
	COOLDOWN = {
		   740, -- Tranquility
		 18562, -- Swiftmend
		 20484, -- Rebirth
		 33831, -- Force of Nature (balance)
		 78674, -- Starsurge
		 88751, -- Wild Mushroom: Detonate
		102693, -- Force of Nature (restoration)
		102703, -- Force of Nature (feral)
		102706, -- Force of Nature (guardian)
		102791, -- Wild Mushroom: Bloom
		132469, -- Typhoon
		145205, -- Wild Mushroom (restoration)
		INTERRUPT = {
			 78675, -- Solar Beam
			 80964, -- Skull Bash (bear)
			 80965, -- Skull Bash (cat)
		},
		AURA = {
			HELPFUL = {
				48438,-- Wild Growth
				[ 29166] = "PERSONAL MANA_REGEN", -- Innervate
				[102342] = "SURVIVAL",-- Ironbark
			},
			PERSONAL = {
				  1850, -- Dash
				 16689, -- Nature's Grasp
				 77761, -- Stampeding Roar (bear)
				 77764, -- Stampeding Roar (cat)
				106898, -- Stampeding Roar (humanoid)
				[ 5229] = "POWER_REGEN", -- Enrage
				SURVIVAL = {
					 22812, -- Barkskin
					 22842, -- Frenzied Regeneration
					 61336, -- Survival Instincts
					106922, -- Might of Ursoc
					132402, -- Savage Defense (buff)
				},
				BURST = {
					  5217, -- Tiger's Fury
					 33891, -- Incarnation: Tree of Life
					 48505, -- Starfall
					102543, -- Incarnation: King of the Jungle
					102558, -- Incarnation: Son of Ursoc
					102560, -- Incarnation: Chosen of Elune
					106952, -- Berserk
					108288, -- Heart of the Wild
					112071, -- Celestial Alignment
					114108, -- Soul of the Forest (restoration)
					124974, -- Nature's Vigil
					132158, -- Nature's Swiftness
				},
			},
		},
	},
	AURA = {
		PERSONAL = {
			[110309] = "HELPFUL UNIQUE_AURA", -- Symbiosis
			BURST = {
				 52610, -- Savage Roar
				127538, -- Savage Roar (glyphed)
			},
			IMPORTANT = {
				 16870, -- Clearcasting (buff)
				 69369, -- Predatory Swiftness (buff)
				100977, -- Harmony (buff)
				145151, -- Dream of Cenarius (balance)
				145152, -- Dream of Cenarius (feral)
				145162, -- Dream of Cenarius (guardian)
			},
		},
		HELPFUL = {
			   774, -- Rejuvenation
			  8936, -- Regrowth
			 33763, -- Lifebloom
		},
		HARMFUL = {
			  1079, -- Rip
			  1822, -- Rake
			  8921, -- Moonfire
			 33745, -- Lacerate
			 77758, -- Thrash (guardian)
			 93402, -- Sunfire
			106830, -- Thrash (feral)
		},
	},
	RAIDBUFF = {
		[  1126] = "STATS",     -- Mark of the Wild
		[ 17007] = "CRITICAL",  -- Leader of the pack
		[ 24907] = "SPL_HASTE", -- Moonkin Aura
	},
	DISPEL = {
		["HELPFUL COOLDOWN"] = {
			  2782, -- Remove Corruption
			 88423, -- Nature's Cure
			122288, -- Symbiosis: Cleanse
		},
		HARMFUL = {
			  2908, -- Soothe
			110802, -- Symbiosis: Purge
		},
	},
}, {
	-- Map aura to provider
	[ 16870] = { 16864, 113043 }, -- Clearcasting <= Omen of Clarity (feral), Omen of Clarity (restoration)
	[ 69369] =  16974, -- Predatory Swiftness
	[ 33831] = 106737, -- Force of Nature (balance)
	[100977] =  77495, -- Mastery: Harmony
	[102693] = 106737, -- Force of Nature (restoration)
	[102703] = 106737, -- Force of Nature (feral)
	[102706] = 106737, -- Force of Nature (guardian)
	[ 33891] = 106731, -- Incarnation: Tree of Life
	[102543] = 106731, -- Incarnation: King of the Jungle
	[102558] = 106731, -- Incarnation: Son of Ursoc
	[102560] = 106731, -- Incarnation: Chosen of Elune
	[114108] = 114107, -- Soul of the Forest (restoration)
	[145151] = 108373, -- Dream of Cenarius (balance)
	[145152] = 108373, -- Dream of Cenarius (feral)
	[145162] = 108373, -- Dream of Cenarius (guardian)
	[132402] = 62606, -- Savage Defense (buff)
}, {
	-- Map aura to modified spell(s
	[69369] = { -- Predatory Swiftness (buff) =>
		 5185, -- Healing Touch
		 2637, -- Hibernate
		20484, -- Rebirth
	},
	[16870] = { -- Clearcasting =>
		5221, -- Shred
		8936, -- Regrowth
		5176, -- Wrath
		5185, -- Healing Touch
	},
	[145162] = { 20484, 5185 }, -- Dream of Cenarius (guardian) => Rebirth & Healing Touch
})
