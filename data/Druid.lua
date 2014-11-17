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
lib:__RegisterSpells("DRUID", "60000", 10, {
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
			106839, -- Skull Bash
		},
		AURA = {
			HELPFUL = {
				  48438, -- Wild Growth
				 102351, -- Cenarion Ward
				[102342] = "SURVIVAL",-- Ironbark
			},
			HARMFUL = {
				   770, -- Faerie Fire
				  5211, -- Mighty Bash
				 16914, -- Hurricane
				127797, -- Ursol's Vortex
			},
			PERSONAL = {
				  1850, -- Dash
				  5215, -- Prowl
				 77761, -- Stampeding Roar (Bear)
				 77764, -- Stampeding Roar (Cat)
				106898, -- Stampeding Roar (Humanoid)
				108291, -- Heart of the Wild (Balance)
				108292, -- Heart of the Wild (Feral)
				108293, -- Heart of the Wild (Guardian)
				108294, -- Heart of the Wild (Resto)
				117679, -- Incarnation: Tree of Life
				SURVIVAL = {
					 22812, -- Barkskin
					 22842, -- Frenzied Regeneration
					 61336, -- Survival Instincts
					132402, -- Savage Defense
				},
				BURST = {
					  5217, -- Tiger's Fury
					 48505, -- Starfall
					 50334, -- Berserk (Bear)
					102543, -- Incarnation: King of the Jungle
					102558, -- Incarnation: Son of Ursoc
					102560, -- Incarnation: Chosen of Elune
					106951, -- Berserk (Cat)
					112071, -- Celestial Alignment
					114108, -- Soul of the Forest (Restoration)
					124974, -- Nature's Vigil
					132158, -- Nature's Swiftness
				},
			},
		},
	},
	AURA = {
		PERSONAL = {
			   768, -- Cat Form
			   783, -- Travel Form
			  5487, -- Bear Form
			158792, -- Pulverize (buff)
			BURST = {
				 52610, -- Savage Roar
				174544, -- Savage Roar (Glyph of Savage Roar)
			},
			IMPORTANT = {
				 16870, -- Clearcasting (Buff)
				 69369, -- Predatory Swiftness (Buff)
				100977, -- Harmony (Buff)
				135286, -- Tooth and Claw
				145152, -- Dream of Cenarius (Feral)
				145162, -- Dream of Cenarius (Guardian)
			},
		},
		HELPFUL = {
			   774, -- Rejuvenation
			  8936, -- Regrowth
			 33763, -- Lifebloom
			155777, -- Rejuvenation (Germination)
		},
		HARMFUL = {
			  1079, -- Rip
			 33745, -- Lacerate
			 58180, -- Infected Wounds (Slow)
			 77758, -- Thrash (Guardian)
			106830, -- Thrash (Feral)
			155722, -- Rake
			164812, -- Moonfire
			164815, -- Sunfire
		},
	},
	RAIDBUFF = {
		[  1126] = "STATS VERSATILITY", -- Mark of the Wild
		[ 24907] = "MASTERY",           -- Moonkin Aura
		[ 17007] = "CRITICAL",          -- Leader of the pack
	},
}, {
	-- Map aura to provider
	[ 50334] =       { 106951, 50334, }, -- Berserk (Bear)
	[ 58180] =                     5221, -- Infected Wounds (Slow) (should be in common)
	[ 77761] = {106898, 77761, 77764, }, -- Stampeding Roar (Bear)
	[ 77764] = {106898, 77761, 77764, }, -- Stampeding Roar (Cat)
	[106898] = {106898, 77761, 77764, }, -- Stampeding Roar (Humanoid)
	[106951] =       { 106951, 50334, }, -- Berserk (Cat)
	[117679] =                    33891, -- Incarnation, Tree of Life Form
	[127797] =                   102793, -- Ursol's Vortex (should be in common)
	[132402] =                    62606, -- Savage Defense
	[155722] =                     1822, -- Rake (Feral)
	[155777] =                   155675, -- Germination (talent)
	[158792] =                    80313, -- Pulverize
	[164812] =                     8921, -- Moonfire
	[164815] =                    93402, -- Sunfire
	[174544] =                    52610, -- Savage Roar (Glyph of Savage Roar)
}, {
	-- Map aura to modified spell(s)
	[135286] = 6807, -- Tooth and Claw -> Maul
})
