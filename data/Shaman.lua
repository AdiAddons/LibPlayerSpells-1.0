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
lib:__RegisterSpells("SHAMAN", "60000", 3, {
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
				SURVIVAL = {
					 30823, -- Shamanistic Rage (Elemental, Enhancement)
					108280, -- Healing Tide Totem (Restoration)
					108270, -- Stone Bulwark Totem (Talent)
					108271, -- Astral Shift (Talent)
				},
				BURST = {
					114050, -- Ascendance (Elemental)
					114051, -- Ascendance (Enhancement)
					114052, -- Ascendance (Restoration)
					 16166, -- Elemental Mastery (Talent)
				},
				58875, -- Spirit Walk (Enhancement)
				79206, -- Spiritwalker's Grace (Elemental, Restoration)
			    16188, -- Ancestral Swiftness (Talent)
			   108281, -- Ancestral Guidance (Talent)
			},
			HELPFUL = {
				[ 98008] = "SURVIVAL", -- Spirit Link Totem (Restoration)
				  8178, -- Grounding Totem
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
			IMPORTANT = {
				53817, -- Maelstrom Weapon (Enchancement)
			},
			UNIQUE_AURA = {
				  324, -- Lightning Shield
				52127, -- Water Shield
			},
			 73920, -- Healing Rain (Self Indicator)
			 73681, -- Unleash Wind (Enhancement) NOTE: Buff not tracked to not cause confusion wiht Unleash Flame
			 73683, -- Unleash Flame (Enhancement)
			 73685, -- Unleash Life (Restoration)
			165462, -- Unleash Flame (Elemental)
			 53390, -- Tidal Wave (Restoration)
			118522, -- Elemental Blast: Critical (Talent)
			173183, -- Elemental Blast: Haste (Talent)
			173184, -- Elemental Blast: Mastery (Talent)
			173185, -- Elemental Blast: Multistrike (Talent)
			173186, -- Elemental Blast: Agility (Talent)
			173187, -- Elemental Blast: Spirit (Talent)
			118472, -- Unleashed Fury (Talent)
			159101, -- Echo of Elements (Talent, Elemental)
			159103, -- Echo of Elements (Talent, Enhancement)
			159105, -- Echo of Elements (Talent, Restoration)
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
			118905, -- Capacitor Totem Stun
			 17364, -- Stormstrike (Enhancement)
			 61882, -- Earthquake (Elemental)
			 63685, -- Frozen Power (Talent)
			 64695, -- Earthgab Totem Root(Talent)
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
	[  3600] = {2484, 51485, }, -- Earthbind => Earthbinding Totem, Earthgrab Totem
	[  8178] =   8177, -- Grounding Totem
	[118905] = 108269, -- Capacitor Totem
	[114050] = 165339, -- Ascendance (Elemental)
	[114051] = 165341, -- Ascendance (Enhancement)
	[114052] = 165344, -- Ascendance (Restoration)
	[ 73683] =  73680, -- Unleash Flame => Unleash Elements (Enhancement)
	[118522] = 117014, -- Elemental Blast: Critical (Talent)
	[173183] = 117014, -- Elemental Blast: Haste (Talent)
	[173184] = 117014, -- Elemental Blast: Mastery (Talent)
	[173185] = 117014, -- Elemental Blast: Multistrike (Talent)
	[173186] = 117014, -- Elemental Blast: Agility (Talent)
	[173187] = 117014, -- Elemental Blast: Spirit (Talent)
	[118472] =  73680, -- Unleashed Fury (Talent)
	[ 63685] =   8056, -- Frozen Power => Frost Shock (Talent)
	[ 64695] =  51485, -- Earthgrab Totem Root (Talent)
	[114896] = 108273, -- Windwalker Totem (Talent)

	[ 53817] = {403, 421, 8004, 73920, }, -- Maelstrom Weapon => Lightning, Chain Lighting, Healing Surge, Healing Rain (Enhancement)
	[ 53390] = {77472, 8004, },           -- Tidal Wave => Healing Wave, Healing Surge (Restoration)
	[159103] = {17364, 60103, 1535 },     -- Echo of Elements => Stormstrike, Lava Lash, Fire Nova (Talent, Enhancement)
	[159101] = {17364, 60103, 1535 },     -- Echo of Elements => Lava Burst, Frost Shock, Earthquake (Talent, Elemental)
	[159105] = {61295, 73685, 51886 },    -- Echo of Elements => Riptide, Unleash Life, Purify Spirit (Talent, Restoration)
}, {
	-- Map aura to modified spell(s)
})
