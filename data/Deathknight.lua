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
lib:__RegisterSpells("DEATHKNIGHT", "50400", 4, {
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
				  49016, -- Unholy Frenzy
				[145629] = 'SURVIVAL', -- Anti-Magic Zone
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
					 49039, -- Lichborne
					 48707, -- Anti-Magic Shell
					 48792, -- Icebound Fortitude
					 81256, -- Dancing Rune Weapon
					 49222, -- Bone Shield
					 55233, -- Vampiric Blood
					113072, -- Might of Ursoc (Symbiosis)
					115018, -- Desecrated Ground
				},
			},
		},
	},
	AURA = {
		PERSONAL = {
			 50421, -- Scent of Blood
			114851, -- Blood Charge
			  3714, -- Path of Frost
			 48263, -- Blood Presence
			 48265, -- Unholy Presence
			 48266, -- Frost Presence
			 81141, -- Crimson Scourge
			 51124, -- Killing Machine
			 59052, -- Freezing Fog
			 81340, -- Sudden Doom
		},
		PET = {
			  91342, -- Shadow Infusion
			  63560, -- Dark Transformation -- NOTE: shadow infusion is not possible when this is active
			[111673] = "INVERT_AURA" -- Control Undead
		},
		HELPFUL = {
			115635, -- Death Barrier
		},
		HARMFUL = {
			 55095, -- Frost Fever
			 55078, -- Blood Plague
			 43265, -- Death and Decay
			 45524, -- Chains of Ice
			-- 73975, -- Necrotic Strike -- NOTE: added twice through something else, maybe as Slow Casting debuff category and Heal Absorb category
			 77606, -- Dark Simulacrum
			114866, -- Soul Reaper (Blood)
			130735, -- Soul Reaper (Frost)
			130736, -- Soul Reaper (Unholy)
		},
	},
	RAIDBUFF = {
		[57330] = "ATK_POWER", -- Horn of Winter
		[55610] = "ATK_SPEED", -- Unholy Aura
	},
	[45477] = "DISPEL HARMFUL",
}, {
	-- Map aura to provider
	[ 55095] =  59921, -- Frost Fever
	[ 55078] =  59879, -- Blood Plague
	[ 81141] =  81136, -- Crimson Scourge
	[ 81256] =  49028, -- Dancing Rune Weapon
	[145629] =  51052, -- Anti-Magic Zone
	[115018] = 108201, -- Desecrated Ground
	[ 51124] =  51128, -- Killing Machine
	[ 59052] =  59057, -- Freezing Fog <= Rime
	[ 81340] =  49530, -- Sudden Doom
	[ 91342] =  49572, -- Shadow Infusion
	[115635] =  63333, -- Death Barrier <= Glyph of Death Coil
	[114851] =  45529, -- Blood Charge <= Blood Tap                -- NOTE: stack count covered by the default ui
	[ 91802] =  47482, -- Shambling Rush <= Leap (Ghoul)
	[ 91800] =  47481, -- Gnaw (Ghoul)
	[ 91797] =  47481, -- Monstrous Blow <= Gnaw (Ghoul)
	-- map spell id to provider?
	[ 45477] =  58631, -- Icy Touch <= Glyph of Icy Touch

}, {
	-- Map aura to modified spell(s)
	[ 50421] = 49998, -- Scent of Blood => Death Strike            -- NOTE: stack count covered by the default ui
	[ 55095] = { -- Frost Fever =>
		45477, -- Icy Touch
		49184, -- Howling Blast
	},
	[ 55078] = 45462, -- Blood Plague => Plague Strike
	[ 81141] = { -- Crimson Scourge =>                             -- NOTE: highlight covered by the default ui
		43265, -- Death and Decay
		48721, -- Blood Boil
	},
	[ 51124] = { -- Killing Machine =>                             -- NOTE: highlight covered by the default ui
		49143, -- Frost Strike
		49020, -- Obliterate
	},
	[ 59052] = { -- Freezing Fog =>                                -- NOTE: highlight covered by the default ui
		45477, -- Icy Touch                                        -- NOTE: becomes too much if we also show Frost Fever on Icy Touch
		49184, -- Howling Blast
	},
	[ 81340] = 47541, -- Sudden Doom => Death Coil                 -- NOTE: highlight covered by the default ui
	[ 91342] = 63560, -- Shadow Infusion => Dark Transformation    -- NOTE: stack count and highlight covered by the default ui
	[115635] = 47541, -- Death Barrier => Death Coil               -- NOTE: Sudden Doom is more interesting than this
})

--[[ ---- TODO ----
ABA
	change to not show stack count when == 1?

GLYPHS:
	Dark Succor => Death Strike
		effect is only possible when not in Blood Presence (it still triggers in BP though)
			show only when not in BP
			96279 - Glyph of Dark Succor (spell id - provider)
			101568 - Dark Succor (buff on the player)
			49998 - Death Strike (spell)

Talents:
	Chilblains (50041) - root effect id 96294 (Chains of Ice)
	Remorseless Winter (108200) - stun effect id 115001, listed only as provider in DRData?
]]
