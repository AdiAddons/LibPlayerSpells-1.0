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
lib:__RegisterSpells("DEATHKNIGHT", "60100", 6, {
	COOLDOWN = {
		 42650, -- Army of the Dead
		 47568, -- Empower Rune Weapon
		 61999, -- Raise Ally
		[48734] = "SURVIVAL", -- Death Pact
		INTERRUPT = {
			 47528, -- Mind Freeze
			[47476] = "HARMFUL AURA", -- Strangulate
			[91802] = "HARMFUL AURA", -- Shambling Rush (Ghoul) -- NOTE: 2 sec root. Inclusion in DRData?
		},
		AURA = {
			HELPFUL = {
				[145629] = 'SURVIVAL', -- Anti-Magic Zone
			},
			HARMFUL = {
				49206, -- Summon Gargoyle
				91797, -- Monstrous Blow (Ghoul) -- NOTE: listed only as provider in DRData?
				91800, -- Gnaw (Ghoul) -- NOTE: listed only as provider in DRData?
			},
			PERSONAL = {
				 51271, -- Pillar of Frost
				 96268, -- Death's Advance
				108200, -- Remorseless Winter
				115989, -- Unholy Blight
				152279, -- Breath of Sindragosa
				SURVIVAL = {
					 42650, -- Army of the Dead
					 48707, -- Anti-Magic Shell
					 48792, -- Icebound Fortitude
					 49039, -- Lichborne
					 49222, -- Bone Shield (Blood)
					 55233, -- Vampiric Blood
					 81256, -- Dancing Rune Weapon
					115018, -- Desecrated Ground
					171049, -- Rune Tap (Blood)
				},
			},
		},
	},
	AURA = {
		PERSONAL = {
			  3714, -- Path of Frost
			 48263, -- Blood Presence
			 48265, -- Unholy Presence
			 48266, -- Frost Presence
			 50421, -- Scent of Blood (stacked(5) by casting Blood Boil)
			 51124, -- Killing Machine
			 59052, -- Freezing Fog
			 77535, -- Blood Shield (Blood)
			 81141, -- Crimson Scourge (Blood)
			 81340, -- Sudden Doom
			114851, -- Blood Charge
			119975, -- Conversion
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
			 43265, -- Death and Decay
			 45524, -- Chains of Ice
			 55078, -- Blood Plague
			 55095, -- Frost Fever
			 77606, -- Dark Simulacrum
			114866, -- Soul Reaper (Blood)
			130735, -- Soul Reaper (Frost)
			130736, -- Soul Reaper (Unholy)
			155159, -- Necrotic Plague
		},
	},
	RAIDBUFF = {
		[ 55610] = "HASTE VERSATILITY", -- Unholy Aura
		[ 57330] = "ATK_POWER",         -- Horn of Winter
		[155522] = "MASTERY",           -- Power of the Grave
	},
}, {
	-- Map aura to provider
	[ 51124] =  51128, -- Killing Machine
	[ 55078] =  45462, -- Blood Plague <= Plague Strike
	[ 55095] = { -- Icy Fever
		45477, -- Icy Touch
		49184, -- Howling Blast
	},
	[ 77535] =  49998, -- Blood Shield <= Death Strike
	[ 81141] =  81136, -- Crimson Scourge
	[ 81256] =  49028, -- Dancing Rune Weapon
	[ 81340] =  49530, -- Sudden Doom
	[ 91342] =  49572, -- Shadow Infusion
	[ 91797] =  47481, -- Monstrous Blow <= Gnaw (Ghoul)
	[ 91802] =  47482, -- Shambling Rush <= Leap (Ghoul)
	[ 91800] =  47481, -- Gnaw (Ghoul)
	[114851] =  45529, -- Blood Charge <= Blood Tap
	[115635] =  63333, -- Death Barrier <= Glyph of Death Coil
	[115018] = 108201, -- Desecrated Ground
	[145629] =  51052, -- Anti-Magic Zone
	[155159] = { -- Necrotic Plague -- TODO: Might be better with a custom rule for stacks.
		45462, -- Plague Strike
		45477, -- Icy Touch
		49184, -- Howling Blast
	},
	[171049] =  48982, -- Rune Tap
}, {
	-- Map aura to modified spell(s)
	[51124] = { -- Killing Machine
		49020, -- Obliterate
		49143, -- Frost Strike
	},
})
