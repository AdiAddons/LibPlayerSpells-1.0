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
lib:__RegisterSpells("DRUID", "60000", 4, {
	COOLDOWN = {
		   740, -- Tranquility
		 18562, -- Swiftmend
		 20484, -- Rebirth
		 33831, -- Force of Nature (balance)
		 78674, -- Starsurge
		102693, -- Force of Nature (restoration)
		102703, -- Force of Nature (feral)
		102706, -- Force of Nature (guardian)
		132469, -- Typhoon
		145205, -- Wild Mushroom (restoration)
		INTERRUPT = {
			 78675, -- Solar Beam
		},
		AURA = {
			HELPFUL = {
				48438,-- Wild Growth
				[102342] = "SURVIVAL",-- Ironbark
			},
			PERSONAL = {
				  1850, -- Dash
				108291, -- Heart of the Wild (Balance)
				108292, -- Heart of the Wild (Feral)
				108293, -- Heart of the Wild (Guardian)
				108294, -- Heart of the Wild (Resto)
				 77761, -- Stampeding Roar (bear)
				 77764, -- Stampeding Roar (cat)
				106898, -- Stampeding Roar (humanoid)
				SURVIVAL = {
					 22812, -- Barkskin
					 22842, -- Frenzied Regeneration
					 61336, -- Survival Instincts
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
			BURST = {
				 52610, -- Savage Roar
			},
			IMPORTANT = {
				 16870, -- Clearcasting (buff)
				 69369, -- Predatory Swiftness (buff)
				100977, -- Harmony (buff)
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
			155722, -- Rake
			 33745, -- Lacerate
			 77758, -- Thrash (guardian)
			106830, -- Thrash (feral)
			164812, -- Moonfire
			164815, -- Sunfire
		},
	},
	RAIDBUFF = {
		[  1126] = "STATS VERSATILITY", -- Mark of the Wild
		[ 17007] = "CRITICAL",          -- Leader of the pack
		[ 24907] = "MASTERY",           -- Moonkin Aura
	},
}, {
	-- Map aura to provider
	[164812] =  8921, -- Moonfire
	[155722] =  1822, -- Rake (Feral)
	[164815] = 93402, -- Sunfire
}, {
	-- Map aura to modified spell(s)
})
