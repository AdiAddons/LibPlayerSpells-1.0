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
	ISSUES:
	* Stone Bulwark and other totem buff/debuffs are ovewriten by ABA totem duration tracking
	* map auras to modifiers doesn't work, only on auras to providers
	* Echos of elements should hint the button instead of highlight it
	* Malestrom weapon should only flash flash at 5 stacks
	* Frozen power aura doesn't work (not enough diference in duration?)

	TODO:
	* Level 100 talents
	* remove "useless" commented spells or uncomment them back in
--]]

local lib = LibStub("LibPlayerSpells-1.0")
if not lib then return end
lib:__RegisterSpells("SHAMAN", "60100", 7, {
	COOLDOWN = {
		[ 2062] = "SURVIVAL", -- Earth Elemental Totem
		  5394, -- Healing Stream Totem
		  8143, -- Tremor Totem
		 20608, -- Reincarnation
		 73680, -- Unleash Elements
		108285, -- Call of the Elements (Talent)
		INTERRUPT = {
			57994, -- Wind Shear
		},
		BURST = {
			 2894, -- Fire Elemental Totem
			51533, -- Feral Spirit (Enhancement)
		},
		AURA = {
			PERSONAL = {
				 16188, -- Ancestral Swiftness (Talent)
				 58875, -- Spirit Walk (Enhancement)
				 79206, -- Spiritwalker's Grace (Elemental, Restoration)
				108281, -- Ancestral Guidance (Talent)
				SURVIVAL = {
					 30823, -- Shamanistic Rage (Elemental, Enhancement)
					108270, -- Stone Bulwark Totem (Talent)
					108271, -- Astral Shift (Talent)
					108280, -- Healing Tide Totem (Restoration)
				},
				BURST = {
					 16166, -- Elemental Mastery (Talent)
					114050, -- Ascendance (Elemental)
					114051, -- Ascendance (Enhancement)
					114052, -- Ascendance (Restoration)
				},
			},
			HELPFUL = {
				   8178, -- Grounding Totem
				[ 98008] = "SURVIVAL", -- Spirit Link Totem (Restoration)
				 114896, -- Windwalker Totem (Talent)
			},
			HARMFUL = {
				  2484, -- Earthbind Totem
				108269, -- Capacitator Totem
				 51485, -- Earthgrab Totem (Talent)
			},
		},
	},
	AURA = {
		PERSONAL = {
			 53390, -- Tidal Wave (Restoration)
			 73681, -- Unleash Wind (Enhancement) NOTE: Buff not tracked to not cause confusion wiht Unleash Flame
			 73683, -- Unleash Flame (Enhancement)
			 73685, -- Unleash Life (Restoration)
			 73920, -- Healing Rain (Self Indicator)
			118472, -- Unleashed Fury (Talent)
			118522, -- Elemental Blast: Critical (Talent)
			165462, -- Unleash Flame (Elemental)
			173183, -- Elemental Blast: Haste (Talent)
			173184, -- Elemental Blast: Mastery (Talent)
			173185, -- Elemental Blast: Multistrike (Talent)
			173186, -- Elemental Blast: Agility (Talent)
			173187, -- Elemental Blast: Spirit (Talent)
			IMPORTANT = {
				53817, -- Maelstrom Weapon (Enchancement)
			},
			UNIQUE_AURA = {
				  324, -- Lightning Shield
				52127, -- Water Shield
			},
		},
		HELPFUL = {
			[  974] = "UNIQUE_AURA", -- Earth Shield
			   546, -- Water Walking
			 61295, -- Riptide (Restoration)
		},
		HARMFUL = {
			  8050, -- Flame Shock
			  8056, -- Frost Shock
			  3600, -- Earbinding Totem
			 17364, -- Stormstrike (Enhancement)
			 61882, -- Earthquake (Elemental)
			 63685, -- Frozen Power (Talent)
			 64695, -- Earthgab Totem Root(Talent)
			118905, -- Capacitor Totem Stun
		},
	},
	DISPEL = {
		[370] = "HARMFUL COOLDOWN", -- Purge
		["HELPFUL COOLDOWN"] = {
			51886, -- Cleanse Spirit
			77130, -- Purify Spirit
		}
	},
	RAIDBUFF = {
		[  2825] = "BURST_HASTE",   -- Bloodlust (Horde shaman)
		[ 32182] = "BURST_HASTE",   -- Heroism (Alliance shaman)
		[116956] = "MASTERY HASTE", -- Grace of Air
	},
}, {
	-- Map aura to provider
	[  3600] = {2484, 51485}, -- Earthbind <= Earthbinding Totem, Earthgrab Totem
	[  8178] =   8177, -- Grounding Totem
	[ 53390] =  51564, -- Tidal Wave
	[ 53817] =  51530, -- Maelstrom Weapon
	[ 63685] =   8056, -- Frozen Power => Frost Shock (Talent)
	[ 64695] =  51485, -- Earthgrab Totem Root (Talent)
	[ 73683] =  73680, -- Unleash Flame => Unleash Elements (Enhancement)
	[114050] = 114049, -- Ascendance (Elemental)
	[114051] = 114049, -- Ascendance (Enhancement)
	[114052] = 114049, -- Ascendance (Restoration)
	[114896] = 108273, -- Windwalker Totem (Talent)
	[118472] =  73680, -- Unleashed Fury (Talent)
	[118522] = 117014, -- Elemental Blast: Critical (Talent)
	[118905] = 108269, -- Capacitor Totem
	[173183] = 117014, -- Elemental Blast: Haste (Talent)
	[173184] = 117014, -- Elemental Blast: Mastery (Talent)
	[173185] = 117014, -- Elemental Blast: Multistrike (Talent)
	[173186] = 117014, -- Elemental Blast: Agility (Talent)
	[173187] = 117014, -- Elemental Blast: Spirit (Talent)
}, {
	-- Map aura to modified spell(s)
	[ 53390] = { -- Tidal Wave
		 8004, -- Healing Surge (Restoration)
		77472, -- Healing Wave
	},
	[ 53817] = { -- Maelstrom Weapon
		  403, -- Lightning
		  421, -- Chain Lighting
		 8004, -- Healing Surge
		73920, -- Healing Rain (Enhancement)
	},
})
