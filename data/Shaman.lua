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
lib:__RegisterSpells('SHAMAN', 11320, 2, {
	COOLDOWN = {
		   8143, -- Tremor Totem
		   3599,
		   6363,
		  17364, -- Stormstrike (Enhancement)
		  51505, -- Lava Burst (Elemental)
		AURA = {
			HARMFUL = {
				188389, -- Flame Shock (Elemental)
				CROWD_CTRL = {
					[64695] = 'ROOT', -- Earthgrab (Restoration talent)
					INCAPACITATE = {},
					STUN = {},
				},
				SNARE = {
					3600, -- Earthbind
				},
			},
			HELPFUL = {
				  8178, -- Grounding Totem Effect (honor talent)
				BURST = {},
				RAIDBUFF = {},
				SURVIVAL = {},
			},
			PERSONAL = {
				BURST = {},
				SURVIVAL = {},
			},
		},
	},
	AURA = {
		HARMFUL = {
			CROWD_CTRL = {},
			SNARE = {
				147732, -- Frostbrand (Enhancement)
			},
		},
		HELPFUL = {
			   546, -- Water Walking
		},
		PERSONAL = {
			  2645, -- Ghost Wolf
			  6196, -- Far Sight
			192106, -- Lightning Shield (Enhancement talent)
			196834, -- Frostbrand (Enhancement)
			SURVIVAL = {},
		},
	},
	DISPEL = {
		[370] = 'HARMFUL MAGIC', -- Purge
		HELPFUL = {
			[526]   = 'POISON', -- Cure Poison
		},
	},
}, {
	-- map aura to provider(s)
	[  3600] =   2484, -- Earthbind <- Earthbind Totem
	--[  8178] = 204336, -- Grounding Totem Effect (honor talent) <- Grounding Totem

}, {})
