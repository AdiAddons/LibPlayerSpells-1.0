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

local lib = LibStub('LibPlayerSpells-1.0')
if not lib then return end
lib:__RegisterSpells('DEATHKNIGHT', 80000, 1, {
	COOLDOWN = {
		  50977, -- Death Gate
		  61999, -- Raise Ally
		[ 47528] = 'INTERRUPT', -- Mind Freeze (Blood)
		[108199] = 'KNOCKBACK', -- Gorefiend's Grasp (Blood)
		AURA = {
			HARMFUL = {
				55078, -- Blood Plague (Blood)
				CROWD_CTRL = {
					STUN = {
						221562, -- Asphyxiate (Blood)
					},
					TAUNT = {
						51399, -- Death Grip (Blood)
						56222, -- Dark Command (Blood)
					}
				},
				SNARE = {
					206930, -- Heart Strike (Blood)
				},
			},
			HELPFUL = {},
			PERSONAL = {
				 48265, -- Death's Advance (Blood)
				 77535, -- Blood Shield (Blood)
				188290, -- Death and Decay (Blood)
				195181, -- Bone Shield (Blood)
				SURVIVAL = {
					48707, -- Anti-Magic Shield (Blood)
					48792, -- Icebound Fortitude (Blood)
					55233, -- Vampiric Blood (Blood)
					81256, -- Dancing Rune Weapon (Blood)
				},
			},
		},
	},
	AURA = {
		HELPFUL = {
			3714, -- Path of Frost
		},
		PERSONAL = {
			81141, -- Crimson Scourge (Blood)
		},
		PET = {
			[111673] = 'INVERT_AURA', -- Control Undead (Blood)
		},
	},
}, {
	-- map aura to provider(s)
	[ 51399] =  49576, -- Death Grip (Blood)
	[ 55078] = { -- Blood Plague (Blood)
		 50842, -- Blood Boil
		195292, -- Death's Caress
	},
	[ 77535] =  77513, -- Blood Shield (Blood) <- Mastery: Blood Shield
	[ 81141] =  81136, -- Crimson Scourge (Blood)
	[ 81256] =  49028, -- Dancing Rune Weapon (Blood)
	[188290] =  43265, -- Death and Decay (Blood)
	[195181] = 195182, -- Bone Shield (Blood) <- Marrowrend
}, {
	-- map aura to modified spell(s)
	[77535] = 49998, -- Blood Shield (Blood) -> Death Strike
	[81141] = 43265, -- Crimson Scourge (Blood) -> Death and Decay
})
