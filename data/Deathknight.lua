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
		 210764, -- Rune Strike (Blood talent)
		 274156, -- Consumption (Blood talent)
		[ 47528] = 'INTERRUPT', -- Mind Freeze (Blood)
		[108199] = 'KNOCKBACK', -- Gorefiend's Grasp (Blood)
		AURA = {
			HARMFUL = {
				 47476, -- Strangulate (Blood honor talent) -- NOTE: Silence
				 55078, -- Blood Plague (Blood)
				 77606, -- Dark Simulacrum (Blood honor talent)
				203173, -- Death Chain (Blood honor talent)
				206891, -- Intimidated (Blood honor talent)
				206931, -- Blooddrinker (Blood talent)
				206940, -- Mark of Blood (Blood talent)
				212610, -- Walking Dead (Blood honor talent)
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
					273977, -- Grip of the Dead (Blood talent)
				},
			},
			HELPFUL = {
				SURVIVAL = {
					145622, -- Anti-Magic Zone (Blood honor talent)
				},
			},
			PERSONAL = {
				  48265, -- Death's Advance (Blood)
				  77535, -- Blood Shield (Blood)
				 188290, -- Death and Decay (Blood)
				 194844, -- Bonestorm (Blood talent)
				 195181, -- Bone Shield (Blood)
				 212552, -- Wraith Walk (Blood talent)
				 219788, -- Ossuary (Blood talent)
				 273947, -- Hemostasis (Blood talent)
				 274009, -- Voracious (Blood talent)
				[219809] = 'POWER_REGEN', -- Tombstone (Blood talent)
				SURVIVAL = {
					 48707, -- Anti-Magic Shield (Blood)
					 48792, -- Icebound Fortitude (Blood)
					 55233, -- Vampiric Blood (Blood)
					 81256, -- Dancing Rune Weapon (Blood)
					194679, -- Rune Tap (Blood talent)
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
			233411, -- Blood for Blood (Blood honor talent)
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
	[145622] =  51052, -- Anti-Magic Zone (Blood honor talent)
	[188290] =  43265, -- Death and Decay (Blood)
	[195181] = 195182, -- Bone Shield (Blood) <- Marrowrend
	[206891] = 207018, -- Intimidated (Blood honor talent) <- Murderous Intent
	[212610] = 202731, -- Walking Dead (Blood honor talent)
	[219788] = 219786, -- Ossuary (Blood talent)
	[273947] = 273946, -- Hemostasis (Blood talent)
	[273977] = 273952, -- Grip of the Dead (Blood talent)
	[274009] = 273953, -- Voracious (Blood talent)
}, {
	-- map aura to modified spell(s)
	[ 77535] =  49998, -- Blood Shield (Blood) -> Death Strike
	[ 81141] =  43265, -- Crimson Scourge (Blood) -> Death and Decay
	[212610] =  49576, -- Walking Dead (Blood honor talent) -> Death Grip
	[219788] = 195182, -- Ossuary (Blood talent) -> Marrowrend
	[273947] =  49998, -- Hemostasis (Blood talent) -> Death Strike
	[273977] =  43265, -- Grip of the Dead (Blood talent) -> Death and Decay
	[274009] =  49998, -- Voracious (Blood talent) -> Death Strike
})
