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
lib:__RegisterSpells("DEATHKNIGHT", 70300, 1, {
	COOLDOWN = {
		  47568, -- Empower Rune Weapon
		  49206, -- Summon Gargoyle
		  50997, -- Death Gate
		  57330, -- Horn of Winter
		  61999, -- Raise Ally (battle res)
		 194913, -- Glacial Advance
		 205233, -- Consumption (Blood artifact)
		 220143, -- Apocalypse (Unholy artifact)
		 221699, -- Blood Tap
		[ 47528] = "INTERRUPT", -- Mind Freeze
		[108199] = "KNOCKBACK", -- Gorefiend's Grasp (knockback)
		AURA = {
			HELPFUL = {
				238698, -- Vampiric Aura (Blood artifact)
			},
			HARMFUL = {
				  51399, -- Death Grip (taunt)
				 130736, -- Soul Reaper
				 206931, -- Blooddrinker
				[206891] = "UNIQUE_AURA", -- Intimidated (PvP)
				[206977] = "SURVIVAL", -- Blood Mirror
				CROWD_CTRL = {
					[56222] = "TAUNT", -- Dark Command (taunt)
					DISORIENT = {
						206961, -- Tremble Before Me (disorient)
						207167, -- Blinding Sleet (disorient)
					},
					ROOT = {
						 91807, -- Shambling Rush (ghoul) (root)
						212540, -- Flesh Hook (abomination) (root)
					},
					STUN = {
						 91797, -- Monstrous Blow (ghoul) (stun)
   						 91800, -- Gnaw (ghoul) (stun)
						108194, -- Asphyxiate (Unholy talent) (stun)
						212332, -- Smash (abomination) (stun)
						212337, -- Powerful Smash (abomination) (stun)
						221562, -- Asphyxiate (Blood) (stun)
					},
				},
				SNARE = {
					190780, -- Frost Breath (Frost artifact) (slow)
					191719, -- Gravitational Pull (Unholy artifact) (slow)
					211793, -- Remorseless Winter (slow)
				},
			},
			PERSONAL = {
				 51271, -- Pillar of Frost
				152279, -- Breath of Sindragosa
				196770, -- Remorseless Winter
				188290, -- Death and Decay
				194918, -- Blighted Rune Weapon
				207127, -- Hungering Rune Weapon
				207256, -- Obliteration
				212552, -- Wraith Walk
				215711, -- Soul Reaper
				216974, -- Necrosis
				218100, -- Defile
				[42650] = "BURST", -- Army of the Dead
				SURVIVAL = {
					 48707, -- Anti-Magic Shield
					 48792, -- Icebound Fortitude
					 55233, -- Vampiric Blood
					 81256, -- Dancing Rune Weapon
					193320, -- Umbilicus Eternus (Blood artifact)
					194679, -- Rune Tap
					194844, -- Bonestorm
					205725, -- Anti-Magic Barrier
					207319, -- Corpse Shield
					219809, -- Tombstone
				},
			},
			PET = {
				 63560, -- Dark Transformation
				 91837, -- Putrid Bullwark (ghoul)
				 91838, -- Huddle (ghoul)
				212383, -- Gastric Bloat (abomination)
				212385, -- Protective Bile (abomination)
			},
		},
	},
	AURA = {
		HELPFUL = {
			3714, -- Path of Frost
		},
		HARMFUL = {
			 55078, -- Blood Plague
			 55095, -- Frost Fever
			191587, -- Virulent Plague
			194310, -- Festering Wound
			196782, -- Outbreak
			206940, -- Mark of Blood
			208278, -- Debilitating Infestation
			211794, -- Winter is Coming
			CROWD_CTRL = {
				STUN = {
					207165, -- Abomination's Might (stun)
					207171, -- Winter is Coming (stun)
				},
			},
			SNARE = {
				 45524, -- Chains of Ice (slow)
				206930, -- Hearth Strike (slow)
				211831, -- Abomination's Might (slow)
			},
		},
		PERSONAL = {
			 51124, -- Killing Machine
			 59052, -- Rime
			 77535, -- Blood Shield
			 81141, -- Crimson Scourge
			 81340, -- Sudden Doom
			101568, -- Dark Succor
			194879, -- Icy Talons
			195181, -- Bone Shield
			207203, -- Frost Shield
			240558, -- Souldrinker (Blood artifact)
			253595, -- Inexorable Assault
		},
		PET = {
			[111673] = "INVERT_AURA", -- Control Undead
		},
	},
}, {
	-- map aura to provider(s)
	[ 51124] = 51128, -- Killing Machine
	[ 51399] = 49576, -- Death Grip (taunt)
	[ 55078] = { -- Blood Plague
		 50842, -- Blood Boil
		195292, -- Death's Caress
	},
	[ 55095] = 49184, -- Frost Ferver -> Howling Blast
	[ 59052] = 59057, -- Rime
	[ 77535] = 77513, -- Blood Shield <- Mastery: Blood Shield
	[ 81256] = 49028, -- Dancing Rune Weapon
	[ 81340] = 49530, -- Sudden Doom
	[ 81141] = 81136, -- Crimson Scourge
	[ 91797] = 63560, -- Monstrous Blow (ghoul) (stun) <- Dark Transformation
	[ 91800] = 47481, -- Gnaw (ghoul) (stun)
	[ 91807] = 63560, -- Shambling Rush (ghoul) (root) <- Dark Transformation
	[ 91837] = 63560, -- Putrid Bullwark <- Dark Transformation
	[ 91838] = 47484, -- Huddle
	[101568] = 178819, -- Dark Succor
	[188290] = { -- Death and Decay
		 43265, -- Death and Decay
		152280, -- Defile
	},
	[190780] = 190778, -- Frost Breath (Frost artifact) (slow)
	[191587] = 77575, -- Virulent Plague <- Outbreak
	[191719] = 191721, -- Gravitational Pull (Unholy artifact) (slow)
	[193320] = 193213, -- Umbilicus Eternus (Blood artifact)
	[194310] = 85948, -- Festering Wound <- Festering Strike
	[194879] = 194878, -- Icy Talons
	[195181] = 195182, -- Bone Shield <- Marrowrend
	[196782] = 77575, -- Outbreak
	[205725] = 205727, -- Anti-Magic Barrier
	[206891] = 207018, -- Intimidated <- Murderous Intent (Blood Honor Talent)
	[206961] = 206960, -- Tremble Before Me (disorient)
	[207165] = 207161, -- Abomination's Might (stun)
	[207171] = 207170, -- Winter is Coming (stun)
	[207203] = 207200, -- Frost Shield <- Permafrost
	[208278] = 207316, -- Debilitating Infestation
	[211793] = 196770, -- Remorseless Winter (slow)
	[211794] = 207170, -- Winter is Coming
	[211831] = 207161, -- Abomination's Might (slow)
	[212332] = 212336, -- Smash (abomination) (stun)
	[212337] = 63560, -- Powerful Smash (abomination) (stun) <- Dark Transformation
	[212383] = 63560, -- Gastric Bloat (abomination) <- Dark Transformation
	[212385] = 212384, -- Protective Bile (abomination)
	[212540] = 63560, -- Flesh Hook (abomination) (root) <- Dark Transformation
	[215711] = 130736, -- Soul Reaper
	[216974] = 207346, -- Necrosis
	[218100] = 152280, -- Defile
	[238698] = 238078, -- Vampiric Aura (Blood artifact)
	[240558] = 238114,-- Souldrinker (Blood artifact)
	[253595] = 253593, -- Inexorable Assault
}, {
	-- map aura to modified spell(s)
	[ 51124] = { -- Killing Machine
		 49020, -- Obliterate
		207230, -- Frostscythe
	},
	[ 59052] = 49184, -- Rime -> Howling Blast
	[ 77535] = 49998, -- Blood Shield -> Death Strike
	[ 81141] = 43265, -- Crimson Scourge -> Death and Decay
	[ 81340] = 47541, -- Sudden Doom -> Death Coil
	[ 91797] = 47481, -- Monstrous Blow (ghoul) (stun) -> Gnaw (with Dark Transformation)
	[ 91807] = 47482, -- Shambling Rush (ghoul) (root) -> Leap (with Dark Transformation)
	[ 91837] = 47484, -- Putrid Bullwark -> Huddle (with Dark Transformation)
	[101568] = 49998, -- Dark Succor -> Death Strike
	[188290] = { -- Death and Decay
		 55090, -- Scourge Strike
		207311, -- Clawing Shadows
	},
	[191719] = 49576, -- Gravitational Pull (Unholy artifact) (slow) -> Death Grip
	[193320] = 55233, -- Umbilicus Eternus (Blood artifact) -> Vampiric Blood
	[194879] = 49143, -- Icy Talons -> Frost Strike
	[205725] = 48707, -- Anti-Magic Barrier -> Anti-Magic Shell
	[206961] = 43265, -- Tremble Before Me (disorient) -> Death and Decay
	[207165] = 49020, -- Abomination's Might (stun) -> Obliterate
	[207171] = 196770, -- Winter is Coming (stun) -> Remorseless Winter
	[207203] = 6603, -- Frost Shield -> Auto Attack
	[208278] = 77575, -- Debilitating Infestation -> Outbreak
	[211794] = 196770, -- Winter is Coming -> Remorseless Winter
	[211831] = 49020, -- Abomination's Might (slow) -> Obliterate
	[212337] = 212336, -- Powerful Smash (abomination) (stun) -> Smash (with Dark Transformation)
	[212383] = 212384, -- Gastric Bloat (abomination) -> Protective Bile (with Dark Transformation)
	[212540] = 212468, -- Flesh Hook (abomination) (root) -> Hook (with Dark Transformation)
	[216974] = { -- Necrosis
		 55090, -- Scourge Strike
		207311, -- Clawing Shadows
	},
	[238698] = 205223, -- Vampiric Aura -> Consumption (Blood artifact)
	[240558] = 49998,-- Souldrinker (Blood artifact) -> Death Strike
	[253595] = 6603, -- Inexorable Assault -> Auto Attack
})
