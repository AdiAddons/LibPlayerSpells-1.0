--[[
LibPlayerSpells-1.0 - Additional information about player spells.
(c) 2013-2018 Adirelle (adirelle@gmail.com)

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
along with LibPlayerSpells-1.0. If not, see <http://www.gnu.org/licenses/>.
--]]

local lib = LibStub('LibPlayerSpells-1.0')
if not lib then return end
lib:__RegisterSpells('HUNTER', 11320, 2, {
	COOLDOWN = {
		AURA = {
			HARMFUL = {
				1543, -- Flare
				CROWD_CTRL = {
					[19410] = 'STUN',
					[24394] = 'STUN',
					DISORIENT = {
						19503, -- Scatter Shot
					},
					INCAPACITATE = {
						3355, -- Freezing Trap
						1513, -- Begin Scare Beast
						14326,
						14327, -- End Scare Beast
						19386, -- Begin Wyvern Sting
						24132,
						24133, -- End Wyvern Sting
					},
				},
				SNARE = {
					5116, -- Concussive Shot (Marksmanship)
				},
			},
			PERSONAL = {
				3045, -- Rapid Fire
				5384, -- Feign Death
			},
			PET = {
				13542, -- Mend Pet
				19577, -- Intimidation (Beast Mastery/Survival)
				24450, -- Prowl (cat)
				23019, -- Dash (Ferocity/Cunning pet)
				19574, -- Bestial Wrath
			},
		},
	},
	AURA = {
		HARMFUL = {
			1462, -- Beast Lore -- NOTE: HELPFUL on player controlled pets
			1515, -- Tame Beast
			3043, -- Begin Scorpid Sting
			14275,
			14276,
			14277, -- End Scorpid Sting
			1978, -- Begin Serpent Sting
			13549,
			13550,
			13551,
			13552,
			13553,
			13554,
			13555,
			25295,
			13554, -- End Serpent Sting
			5116, -- Concussive Shot
			3034, -- Begin Viper Sting
			14279,
			14280, -- End Viper Sting
			2974, -- Begin Wing Clip
			14267,
			14268, -- End Wing Clip
			UNIQUE_AURA = {
				1130, -- Begin Hunter's Mark
				14323,
				14324,
				14325, --  End Hunter's Mark
			},
		},
		HELPFUL = {
			13159, -- Aspect of the Pack
			20043, -- Aspect of the Wild
			20190, -- Aspect of the Wild
			19506, -- Trueshot Aura
		},
		PERSONAL = {
			3045, -- Rapid Fire
			6197, -- Eagle Eye
			5118, -- Aspect of the Cheetah
			13161, -- Aspect of the Beast
			13163, -- Aspect of the Monkey
			13165, -- Begin Aspect of the Hawk
			14318,
			14319,
			14320,
			14321,
			14322,
			25296,
			14321, -- End Aspect of the Hawk
		},
	},
}, {
	-- map aura to provider(s)
	[  3355] = { -- Freezing Trap
		  1499, -- Freezing Trap
		 14310,
	},
	[ 24394] =  19577, -- Intimidation (Beast Mastery/Survival)
	[132951] =   1543, -- Flare
	[ 19410] =   5116, -- Improved Concussive Shot
}, {})
