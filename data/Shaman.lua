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
along with LibPlayerSpells-1.0. If not, see <http://www.gnu.org/licenses/>.
--]]

local lib = LibStub('LibPlayerSpells-1.0')
if not lib then return end
lib:__RegisterSpells('SHAMAN', 80000, 1, {
	COOLDOWN = {
		   8143, -- Tremor Totem
		  51505, -- Lava Burst (Elemental)
		 198067, -- Fire Elemental (Elemental)
		 198103, -- Earth Elemental
		[57994] = 'INTERRUPT', -- Wind Shear
		AURA = {
			HARMFUL = {
				188389, -- Flame Shock (Elemental)
				CROWD_CTRL = {
					[ 51514] = 'INCAPACITATE', -- Hex
					[118905] = 'STUN', -- Static Charge
				},
				SNARE = {
					  3600, -- Earthbind
					[51490] = 'KNOCKBACK', -- Thunderstorm (Elemental)
				},
			},
			HELPFUL = {},
			PERSONAL = {
				77762, -- Lava Surge (Elemental)
				SURVIVAL = {
					108271, -- Astral Shift
				},
			},
		},
	},
	AURA = {
		HARMFUL = {
			[182387] = 'KNOCKBACK', -- Earthquake (Elemental)
			SNARE = {
				196840, -- Frost Shock
			},
		},
		HELPFUL = {
			546, -- Water Walking
		},
		PERSONAL = {
			2645, -- Ghost Wolf
			6196, -- Far Sight
		},
	},
	DISPEL = {
		[  370] = 'HARMFUL MAGIC', -- Purge
		[51886] = 'HELPFUL CURSE', -- Cleanse Spirit (Elemental/Enhancement)
	},
}, {
	-- map aura to provider(s)
	[  3600] =  2484, -- Earthbind <- Earthbind Totem
	[ 77762] = 77756, -- Lava Surge (Elemental)
	[118905] = 192058, -- Static Charge <- Capacitor Totem
	[182387] = 61882, -- Earthquake (Elemental)
}, {
	-- map aura to modified spell(s)
	[77762] = 51505, -- Lava Surge (Elemental) -> Lava Burst
})
