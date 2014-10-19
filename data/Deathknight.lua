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
lib:__RegisterSpells("DEATHKNIGHT", "60000", 2, {
	COOLDOWN = {
		42650, -- Army of the Dead
		61999, -- Raise Ally
		47568, -- Empower Rune Weapon
		[48734] = "SURVIVAL", -- Death Pact
		INTERRUPT = {
			 47528, -- Mind Freeze
			[91802] = "HARMFUL AURA", -- Shambling Rush (Ghoul)    -- NOTE: 2 sec root. Inclusion in DRData?
			[47476] = "HARMFUL AURA", -- Strangulate
		},
		AURA = {
			HELPFUL = {
				[145629] = 'SURVIVAL', -- Anti-Magic Zone
				[171049] = 'SURVIVAL', -- Blood Tap (Blood)
			},
			HARMFUL = {
				49206, -- Summon Gargoyle
				91800, -- Gnaw (Ghoul)                             -- NOTE: listed only as provider in DRData?
				91797, -- Monstrous Blow (Ghoul)                   -- NOTE: listed only as provider in DRData?
			},
			PERSONAL = {
				115989, -- Unholy Blight
				 96268, -- Death's Advance
				 51271, -- Pillar of Frost
				SURVIVAL = {
					171049, -- Rune Tap (Blood)
					 49039, -- Lichborne
					 48707, -- Anti-Magic Shell
					 48792, -- Icebound Fortitude
					 81256, -- Dancing Rune Weapon
					 49222, -- Bone Shield (Blood)
					 55233, -- Vampiric Blood
					115018, -- Desecrated Ground
					 42650, -- Army of the Dead
				},
			},
		},
	},
	AURA = {
		PERSONAL = {
			114851, -- Blood Charge                                      -- NOTE: stack count covered by the default ui
			 48263, -- Blood Presence
			 77535, -- Blood Shield (Blood)
			 81141, -- Crimson Scourge (Blood)
			 59052, -- Freezing Fog
			 48266, -- Frost Presence
			 51124, -- Killing Machine
			  3714, -- Path of Frost
			 50421, -- Scent of Blood (stacked(5) by casting Blood Boil) -- NOTE: stack count covered by the default ui
			 81340, -- Sudden Doom
			 48265, -- Unholy Presence
		},
		PET = {
			  63560, -- Dark Transformation -- NOTE: shadow infusion is not possible when this is active
			  91342, -- Shadow Infusion
			[111673] = "INVERT_AURA" -- Control Undead
		},
		HELPFUL = {
			115635, -- Death Barrier
		},
		HARMFUL = {
			 55078, -- Blood Plague
			 45524, -- Chains of Ice
			 43265, -- Death and Decay
			 77606, -- Dark Simulacrum
			 55095, -- Frost Fever
			-- 73975, -- Necrotic Strike -- NOTE: added twice through something else, maybe as Slow Casting debuff category and Heal Absorb category
			114866, -- Soul Reaper (Blood)
			130735, -- Soul Reaper (Frost)
			130736, -- Soul Reaper (Unholy)
		},
	},
	RAIDBUFF = {
		[ 57330] = "ATK_POWER",         -- Horn of Winter
		[155522] = "MASTERY",           -- Power of the Grave
		[ 55610] = "HASTE VERSATILITY", -- Unholy Aura
	},
}, {
	-- Map aura to provider
	[ 55095] =  45477, -- Frost Fever
	[ 55078] =  45462, -- Blood Plague
	[145629] =  51052, -- Anti-Magic Zone
	[114851] =  45529, -- Blood Charge <= Blood Tap                      -- NOTE: stack count covered by the default ui
	[ 55078] =  45462, -- Blood Plague, Plague Strike
	[ 77535] =  49998, -- Blood Shield, Death Strike
	[ 81141] =  81136, -- Crimson Scourge
	[ 81256] =  49028, -- Dancing Rune Weapon
	[115635] =  63333, -- Death Barrier <= Glyph of Death Coil
	[115018] = 108201, -- Desecrated Ground
	[ 91800] =  47481, -- Gnaw (Ghoul)
	[ 55095] =  45477, -- Icy Fever, Icy Touch
	[ 51124] =  51128, -- Killing Machine
	[ 91797] =  47481, -- Monstrous Blow <= Gnaw (Ghoul)
	[171049] =  48982, -- Rune Tap
	[ 91342] =  49572, -- Shadow Infusion
	[ 91802] =  47482, -- Shambling Rush <= Leap (Ghoul)
	[171049] =  48982, -- Blood Tap
	[ 81340] =  49530, -- Sudden Doom
}, {
	-- Map aura to modified spell(s)
})
