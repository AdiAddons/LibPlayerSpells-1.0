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
lib:__RegisterSpells("DRUID", "50400", 1, {
	["COOLDOWN"] = {
		   740, -- Tranquility
		  2782, -- Remove Corruption
		 18562, -- Swiftmend
		 20484, -- Rebirth
		 33831, -- Force of Nature (balance)
		 50516, -- Typhoon
		 78674, -- Starsurge
		 78675, -- Solar Beam
		 80964, -- Skull Bash (bear)
		 80965, -- Skull Bash (cat)
		 88423, -- Nature's Cure
		 88751, -- Wild Mushroom: Detonate
		102693, -- Force of Nature (restoration)
		102703, -- Force of Nature (feral)
		102706, -- Force of Nature (guardian)
		102791, -- Wild Mushroom: Bloom
		122288, -- Symbiosis: Cleanse
		145205, -- Wild Mushroom (restoration)
	},
	["PERSONAL SURVIVAL COOLDOWN AURA"] = {
		 22812, -- Barkskin
		 22842, -- Frenzied Regeneration
		 61336, -- Survival Instincts
		 62606, -- Savage Defense
		106922, -- Might of Ursoc
	},
	["PERSONAL BURST COOLDOWN AURA"] = {
		  5217, -- Tiger's Fury
		 17116, -- Nature's Swiftness
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
	},
	["PERSONAL COOLDOWN AURA"] = {
		  1850, -- Dash
		 16689, -- Nature's Grasp
		 77761, -- Stampeding Roar (bear)
		 77764, -- Stampeding Roar (cat)
		106898, -- Stampeding Roar (humanoid)
	},
	["PERSONAL BURST AURA"] = {
		 52610, -- Savage Roar
		127538, -- Savage Roar (glyphed)
	},
	["PERSONAL IMPORTANT AURA"] = {
		 69369, -- Predatory Swiftness (buff)
		 16870, -- Clearcasting (buff)
		145151, -- Dream of Cenarius (balance)
		145152, -- Dream of Cenarius (feral)
		145162, -- Dream of Cenarius (guardian)
	},
	["HELPFUL AURA"] = {
		   774, -- Rejuvenation
		  8936, -- Regrowth
		 33763, -- Lifebloom
	},
	["HARMFUL AURA"] = {
		  1079, -- Rip
		  1822, -- Rake
		  8921, -- Moonfire
		 33745, -- Lacerate
		 77758, -- Thrash (guardian)
		 93402, -- Sunfire
		106830, -- Thrash (feral)
	},
	-- Special cases
	[  5229] = "PERSONAL POWER_REGEN COOLDOWN AURA", -- Enrage
	[ 29166] = "HELPFUL PERSONAL MANA_REGEN COOLDOWN AURA", -- Innervate
	[ 48438] = "HELPFUL COOLDOWN AURA",-- Wild Growth
	[102342] = "HELPFUL SURVIVAL COOLDOWN AURA",-- Ironbark
	[110309] = "HELPFUL PERSONAL UNIQUE_AURA AURA", -- Symbiosis
}, {
	-- Map aura to provider
	[ 69369] =  16974, -- Predatory Swiftness
	[ 33831] = 106737, -- Force of Nature (balance)
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
}, {
	-- Map aura to modified spell(s)
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
