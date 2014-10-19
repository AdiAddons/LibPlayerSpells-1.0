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

--[[
	TODO:
	* All Elemental Spells
	* All Restoration spells
--]]

local lib = LibStub("LibPlayerSpells-1.0")
if not lib then return end
lib:__RegisterSpells("SHAMAN", "60000", 1, {
	COOLDOWN = {
		[ 2062] = 'SURVIVAL',   -- Earth Elemental Totem
		  2484, -- Earthbind Totem
		  5394, -- Healing Stream Totem
		  8143, -- Tremor Totem
		  8177, -- Grounding Totem
		 51485, -- Earthgrab Totem (Talent)
		108269, -- Capacitator Totem
		 16188, -- Ancestral Swiftness (Talent) BROKEN
		 20608, -- Reincarnation
		 73680, -- Unleash Elements
		108281, -- Ancestral Guidance (Talent)
		108285, -- Call of the Elements (Talent)
		117012, -- Unleashed Fury (Talent)
		117014, -- Elemental Blast (Talent)
		INTERRUPT = {
			57994, -- Wind Shear
		},
		BURST = {
			 2894, -- Fire Elemental Totem
			51533, -- Feral Spirit (Enhan)
		},
		AURA = {
			HELPFUL = {
				61295, -- Riptide (Resto)
				[ 98008] = 'SURVIVAL', -- Spirit Link Totem (Resto)
			},
			PERSONAL = {
				SURVIVAL = {
					 30823, -- Shamanistic Rage (Elem, Enhan)
					108270, -- Stone Bulwark Totem (Talent)
					108271, -- Astral Shift (Talent)
					108280, -- Healing Tide Totem (Resto)
				},
				BURST = {
					 16166, -- Elemental Mastery (Talent)
					114049, -- Ascendance
				},
				79206, -- Spiritwalker's Grace
				73920, -- Healing Rain (indicator)
			},
		},
	},
	AURA = {
		PERSONAL = {
			IMPORTANT = {
				53817, -- Maelstrom Weapon (buff)
			},
			UNIQUE_AURA = {
				  324, -- Lightning Shield17
			},
			114050, -- Ascendance (Elemental)
			114051, -- Ascendance (Enhancement)
			114052, -- Ascendance (Restoration)
			118522, -- Elemental Blast (Talent)
		},
		HELPFUL = {
			[  974] = 'UNIQUE_AURA', -- Earth Shield
			   546, -- Water Walking
		},
		HARMFUL = {
			 17364, -- Stormstrike
			  8050, -- Flame Shock
			  8056, -- Frost Shock
		},
	},
	RAIDBUFF = {
		[  2825] = 'BURST_HASTE',   -- Bloodlust (Horde shaman)
		[ 32182] = 'BURST_HASTE',   -- Heroism (Alliance shaman)
		[116956] = "MASTERY HASTE", -- Grace of Air
	},
	DISPEL = {
		[370] = "HARMFUL", -- Purge
		["HELPFUL COOLDOWN"] = {
			77130, -- Purify Spirit
			51886, -- Cleanse Spirit
		},
	},
}, {
	-- Map aura to provider
	[114050] = 114049, -- Ascendance (Elemental)
	[114051] = 165341, -- Ascendance (Enhancement)
	[114052] = 114049, -- Ascendance (Restoration)
}, {
	-- Map aura to modified spell(s)
	[53817] = {403, 421, 8004, 73920, }, -- Maelstrom Weapon => Lightning, Chain Lighting, Healing Surge, Healing Rain
})
