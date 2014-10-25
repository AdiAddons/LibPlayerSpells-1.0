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
	* Malestrom weapon doesn't show stacks on player (ABA job i guess)
	* Frozen power aura doesn't work (not enough diference in duration?)
	* Echo of elements aura doesn't apply to affected spells
		
	TODO:
	* All Restoration specific spells and talents
	* remove "useless" commented spells or uncomment them back in
--]]

local lib = LibStub("LibPlayerSpells-1.0")
if not lib then return end
lib:__RegisterSpells("SHAMAN", "60000", 2, {
	COOLDOWN = {
--		[ 2062] = 'SURVIVAL',   -- Earth Elemental Totem
--		  2484, -- Earthbind Totem
--		  5394, -- Healing Stream Totem
--		  8143, -- Tremor Totem
--		  8177, -- Grounding Totem
--		108269, -- Capacitator Totem
--		 20608, -- Reincarnation
--		 73680, -- Unleash Elements
--		 51485, -- Earthgrab Totem (Talent)
--		108285, -- Call of the Elements (Talent)
--		
		INTERRUPT = {
			57994, -- Wind Shear
		},
		BURST = {
--			 2894, -- Fire Elemental Totem
--			51533, -- Feral Spirit (Enhancement)
		},
		AURA = {
			HELPFUL = {
				61295, -- Riptide (Restoration)
--				[ 98008] = 'SURVIVAL', -- Spirit Link Totem (Restoration)
			},
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
		},
	},
	AURA = {
		PERSONAL = {
			IMPORTANT = {
				53817, -- Maelstrom Weapon (Enchancement)
			},
			UNIQUE_AURA = {
				  324, -- Lightning Shield
			},
			 73920, -- Healing Rain (Self Indicator)
			 73681, -- Unleash Wind (Enhancement) NOTE: Buff not tracked to not cause confusion wiht Unleash Flame
			 73683, -- Unleash Flame (Enhancement)
			165462, -- Unleash Flame (Elemental)
			118522, -- Elemental Blast: Critical (Talent)
			173183, -- Elemental Blast: Haste (Talent)
			173184, -- Elemental Blast: Mastery (Talent)
			173185, -- Elemental Blast: Multistrike (Talent)
			173186, -- Elemental Blast: Agility (Talent)
			173187, -- Elemental Blast: Spirit (Talent)
			118472, -- Unleashed Fury (Talent)
			159101, -- Echo of Elements (Talent, Elemental)
			159103, -- Echo of Elements (Talent, Enhancement)
		},
		HELPFUL = {
			[  974] = 'UNIQUE_AURA', -- Earth Shield
			   546, -- Water Walking
		},
		HARMFUL = {
			  8050, -- Flame Shock
			  8056, -- Frost Shock
			 17364, -- Stormstrike (Enhancement)
			 61882, -- Earthquake (Elemental)
			 63685, -- Frozen Power (Talent)
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
}, {
	-- Map aura to modified spell(s)
	[ 53817] = {403, 421, 8004, 73920, }, -- Maelstrom Weapon => Lightning, Chain Lighting, Healing Surge, Healing Rain (Enhancement)
	[159103] = {17364, 60103, 1535 },     -- Echo of Elements => Stormstrike, Lava Lash, Fire Nova (Enhancement)
	[159101] = {17364, 60103, 1535 },     -- Echo of Elements => Lava Burst, Frost Shock, Earthquake (Elemental)
})
