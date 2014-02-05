--[[
LibPlayerSpells-1.0 - Additional information about player spells.
(c) 2013 Adirelle (adirelle@gmail.com)

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
lib:__RegisterSpells("SHAMAN", "50400", 5, {
	COOLDOWN = {
		[ 2062] = 'SURVIVAL',   -- Earth Elemental Totem
		  2484, -- Earthbind Totem
		  5394, -- Healing Stream Totem
		  8143, -- Tremor Totem
		  8177, -- Grounding Totem
		 51485, -- Earthgrab Totem (talent)
		108269, -- Capacitator Totem
		 16188, -- Ancestral Swiftness (talent)
		 20608, -- Reincarnation
		 51505, -- Lava Burst
		 61882, -- Earthquake
		 73680, -- Unleash Elements
		108281, -- Ancestral Guidance (talent)
		108285, -- Call of the Elements (talent)
		117012, -- Unleashed Fury (talent)
		117014, -- Elemental Blast (talent)
		INTERRUPT = {
			57994, -- Wind Shear
			113287, -- Solar Beam (Symbiosis)
		},
		BURST = {
			 2894, -- Fire Elemental Totem
			51533, -- Feral Spirit
		},
		MANA_REGEN = {
			16190, -- Mana Tide Totem
			51490, -- Thunderstorm
		},
		AURA = {
			HELPFUL = {
				61295, -- Riptide
				[ 98008] = 'SURVIVAL', -- Spirit Link Totem
				[120668] = 'BURST',    -- Stormlash Totem
			},
			PERSONAL = {
				SURVIVAL = {
					 30823, -- Shamanistic Rage
					108270, -- Stone Bulwark Totem (talent)
					108271, -- Astral Shift (talent)
					108280, -- Healing Tide Totem
				},
				BURST = {
					 16166, -- Elemental Mastery (talent)
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
				16246, -- Clearcasting (buff)
				53390, -- Tidal Waves
				53817, -- Maelstrom Weapon (buff)
			},
			UNIQUE_AURA = {
				  324, -- Lightning Shield
				52127, -- Water Shield
			},
			  8024, -- Flametongue Weapon
			  8033, -- Frostbrand Weapon
			  8017, -- Rockbiter Weapon
			  8232, -- Windfury Weapon
			 51730, -- Earthliving Weapon
			 73681, -- Unleash Wind
			 73683, -- Unleash Flame
			 73685, -- Unleash Life
			118472, -- Unleashed Fury (Windfury)
			118473, -- Unleashed Fury (Earthliving)
			118474, -- Unleashed Fury (Rockbiter)
			118475, -- Unleashed Fury (Frostbrand)
			114050, -- Ascendance (Elemental)
			114051, -- Ascendance (Enhancement)
			114052, -- Ascendance (Restoration)
			118522, -- Elemental Blast (talent)
		},
		HELPFUL = {
			[  974] = 'UNIQUE_AURA', -- Earth Shield
			 51945, -- Earthliving (proc)
			105284, -- Ancestral Vigor (applied by Riptide)
		},
		HARMFUL = {
			  8034, -- Frostbrand (proc)
			  8050, -- Flame Shock
			  8056, -- Frost Shock
			 73682, -- Unleash Frost
			 73684, -- Unleash Earth (taunt)
			118470, -- Unleashed Fury (Flametongue)
		},
	},
	RAIDBUFF = {
		[  2825] = 'BURST_HASTE', -- Bloodlust (Horde shaman)
		[ 30809] = 'ATK_SPEED',   -- Unleashed Rage
		[ 32182] = 'BURST_HASTE', -- Heroism (Alliance shaman)
		[ 77747] = 'SPL_POWER',   -- Burning Wrath
		[116956] = 'MASTERY',     -- Grace of Air
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
	[ 51945] =  51730, -- Earthliving
	[ 53390] =  51564, -- Tidal Waves
	[ 53817] =  51530, -- Maelstrom Weapon
	[ 73683] =  73680, -- Unleash Elements (Flametongue)
	[ 73681] =  73680, -- Unleash Elements (Windfury)
	[ 73685] =  73680, -- Unleash Elements (Earthliving)
	[ 73684] =  73680, -- Unleash Elements (Rockbiter)
	[ 73682] =  73680, -- Unleash Elements (Frostbrand)
	[118470] = 117012, -- Unleashed Fury (Flametongue)
	[118472] = 117012, -- Unleashed Fury (Windfury)
	[118473] = 117012, -- Unleashed Fury (Earthliving)
	[118474] = 117012, -- Unleashed Fury (Rockbiter)
	[118475] = 117012, -- Unleashed Fury (Frostbrand)
	[118522] = 117014, -- Elemental Blast
	[114050] = 114049, -- Ascendance (Elemental)
	[114051] = 114049, -- Ascendance (Enhancement)
	[114052] = 114049, -- Ascendance (Restoration)
}, {
	-- Map aura to modified spell(s)
	[114050] = { 114074, 51505 }, -- Ascendance (Elemental): Chain Lightning, Lava Burst
	[114051] = 17364, -- Ascendance (Enhancement): Stormstrike
	[114052] = { 61295, 73920, 1064, 8004, 77472, 331 }, -- Ascendance (Restoration): Riptide, Healing Rain, Chain Heal, Healing Surge, Greater Healing Wave, Healing Wave
	[ 53390] = { 8004, 77472, 331 }, -- Tidal Waves
})
