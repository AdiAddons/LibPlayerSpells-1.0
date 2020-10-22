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
lib:__RegisterSpells('SHAMAN', 90001, 1, {
	COOLDOWN = {
		   8143, -- Tremor Totem
		  17364, -- Stormstrike (Enhancement)
		  51505, -- Lava Burst (Elemental)
		  51533, -- Feral Spirit (Enhancement)
		 115356, -- Windstrike (Enhancement Talent) NOTE: when Ascendance is active
		 192222, -- Liquid Magma Totem (Elemental Talent)
		 196884, -- Feral Lunge (Enhancement Talent)
		 197995, -- Wellspring (Restoration Talent)
		 198067, -- Fire Elemental (Elemental)
		 198103, -- Earth Elemental
		 207778, -- Downpour (Restoration Talent)
		 320746, -- Surge of Earth (Restoration Talent)
		 333974, -- Fire Nova (Enhancement Talent)
		 342243, -- Static Discharge (Elemental Talent)
		[ 57994] = 'INTERRUPT', -- Wind Shear
		AURA = {
			HARMFUL = {
				118297, -- Immolate (Fire Elemental) (Elemental Talent)
				157375, -- Eye of the Storm (Storm Elemental) (Elemental Talent)
				188089, -- Earthen Spike (Enhancement Talent)
				188389, -- Flame Shock (Elemental)
				188838, -- Flame Shock (Restoration)
				208997, -- Counterstrike Totem (PvP Talent)
				210927, -- Static Cling (Enhancement PvP Talent)
				268429, -- Searing Assault (Enhancement Talent)
				271924, -- Molten Weapon (Enhancement Talent)
				CROWD_CTRL = {
					[64695] = 'ROOT', -- Earthgrab (Restoration Talent)
					INCAPACITATE = {
						 51514, -- Hex
						197214, -- Sundering (Enhancement Talent)
					},
					STUN = {
						118345, -- Pulverize (Earth Elemental) (Elemental Talent)
						118905, -- Static Charge
						204437, -- Lightning Lasso (Elemental PvP Talent)
					},
				},
				SNARE = {
					   3600, -- Earthbind
					 116947, -- Earthbind (Restoration Talent)
					 342240, -- Ice Strike (Enhancement Talent)
					[ 51490] = 'KNOCKBACK', -- Thunderstorm (Elemental)
				},
			},
			HELPFUL = {
				  8178, -- Grounding Totem Effect (PvP Talent)
				 61295, -- Riptide (Restoration)
				192082, -- Wind Rush (Talent)
				201633, -- Earthen Wall (Restoraton Talent)
				204366, -- Thundercharge (Enhancement PvP Talent)
				320763, -- Mana Tide Totem (Restoration)
				BURST = {
					204361, -- Bloodlust (Enhancement PvP Talent)
					208963, -- Skyfury Totem (PvP Talent)
				},
				RAIDBUFF = {
					 2825, -- Bloodlust (horde)
					32182, -- Heroism (alliance)
					INVERT_AURA = {
						57723, -- Exhaustion (alliance)
						57724, -- Sated (horde)
					},
				},
				SURVIVAL = {
					 98007, -- Spirit Link Totem (Restoration)
					207498, -- Ancestral Protection Totem (Restoration Talent)
				},
			},
			PERSONAL = {
				 58875, -- Spirit Walk (Enhancement)
				 73685, -- Unleash Life (Restoration Talent)
				 73920, -- Healing Rain (Restoration)
				 77762, -- Lava Surge (Elemental/Restoration)
				 79206, -- Spiritwalker's Grace (Restoration)
				108281, -- Ancestral Guidance (Elemental Talent)
				118522, -- Elemental Blast: Crtical Strike (Elemental Talent)
				157504, -- Cloudburst Totem (Restoration Talent)
				173183, -- Elemental Blast: Haste (Elemental Talent)
				173184, -- Elemental Blast: Mastery (Elemental Talent)
				187878, -- Crash Lightning (Enhancement)
				194084, -- Flametongue (Enhancement)
				198300, -- Gathering Storms (Enhancement)
				210714, -- Icefury (Elemental Talent)
				211400, -- Static Cling (Enhancement PvP Talent)
				224125, -- Molten Weapon (Elemental Spirits - Enhancement Talent)
				224127, -- Crackling Surge (Elemental Spirits - Enhancement Talent)
				236502, -- Tidebringer (Restoration PvP Talent)
				236746, -- Control of Lava (Elemental PvP Talent)
				260734, -- Master of the Elements (Elemental Talent)
				263806, -- Wind Gust (Elemental Talent)
				320125, -- Echoing Shock (Elemental Talent)
				BURST = {
					114050, -- Ascendance (Elemental Talent)
					114051, -- Ascendance (Enhancement Talent)
					114052, -- Ascendance (Restoration Talent)
					191634, -- Stormkeeper (Elemental Talent)
				},
				SURVIVAL = {
					108271, -- Astral Shift
					118337, -- Harden Skin (Earth Elemental) (Elemental Talent)
					210918, -- Ethereal Form (Enhancement PvP Talent)
				},
			},
			PET = {
				157348, -- Call Lightning (Storm Elemental) (Elemental Talent)
			},
		},
	},
	AURA = {
		HARMFUL = {
			206647, -- Electrocute (Restoration PvP Talent)
			269808, -- Exposed Elements (Elemental Talent)
			[182387] = 'KNOCKBACK', -- Earthquake (Elemental)
			CROWD_CTRL = {
				[204399] = 'STUN', -- Earthfury (Elemental PvP Talent)
			},
			SNARE = {
				147732, -- Frostbrand (Enhancement)
				196840, -- Frost Shock (Elemental)
				197385, -- Fury of Air (Enhancement Talent)
			},
		},
		HELPFUL = {
			   546, -- Water Walking
			   974, -- Earth Shield (Talent)
			204293, -- Spirit Link (Restoration PvP Talent)
			207400, -- Ancestral Vigor (Restoration Talent)
			327942, -- Windfury Totem
		},
		PERSONAL = {
			  2645, -- Ghost Wolf
			  6196, -- Far Sight
			 52127, -- Water Shield
			 53390, -- Tidal Waves (Restoration)
			192106, -- Lightning Shield (Enhancement Talent)
			196834, -- Frostbrand (Enhancement)
			197211, -- Fury of Air (Enhancement Talent)
			201846, -- Stormbringer (Enhancement)
			202192, -- Resonance Totem (Elemental Talent)
			204262, -- Spectral Recovery (PvP Talent)
			215785, -- Hot Hand (Enhancement Talent)
			216251, -- Undulation (Restoration Talent)
			262652, -- Forceful Winds (Enhancement Talent)
			273323, -- Lightning Shield Overcharge (Enhancement Talent)
			280815, -- Flash Flood (Restoration Talent)
			SURVIVAL = {
				260881, -- Spirit Wolf (Talent)
			},
		},
	},
	DISPEL = {
		[370] = 'HARMFUL MAGIC', -- Purge
		HELPFUL = {
			[51886] = 'CURSE', -- Cleanse Spirit (Elemental/Enhancement)
			[77130] = 'CURSE MAGIC', -- Purify Spirit (Restoration)
		},
	},
}, {
	-- map aura to provider(s)
	[  3600] =   2484, -- Earthbind <- Earthbind Totem
	[  8178] = 204336, -- Grounding Totem Effect (PvP Talent) <- Grounding Totem
	[ 53390] =  51564, -- Tidal Waves (Restoration)
	[ 64695] =  51485, -- Earthgrab <- Earthgrab Totem (Restoration Talent)
	[ 77762] =  77756, -- Lava Surge (Elemental/Restoration)
	[ 98007] =  98008, -- Spirit Link Totem (Restoration)
	[116947] =  51485, -- Earthbind <- Earthgrab Totem (Restoration Talent)
	[118297] = 117013, -- Immolate <- Primal Elementalist (Elemental Talent)
	[118337] = 117013, -- Harden Skin <- Primal Elementalist (Elemental Talent)
	[118345] = 117013, -- Pulverize <- Primal Elementalist (Elemental Talent)
	[118522] = 117014, -- Elemental Blast: Crtical Strike (Elemental Totem) <- Elemental Blast (Elemental Talent)
	[118905] = 192058, -- Static Charge <- Capacitor Totem
	[147732] = 196834, -- Frostbrand (Enhancement)
	[157348] = 117013, -- Call Lightning <- Primal Elementalist (Elemental Talent)
	[157375] = 117013, -- Eye of the Storm <- Primal Elementalist (Elemental Talent)
	[157504] = 157153, -- Cloudburst Totem (Restoration Talent)
	[173183] = 117014, -- Elemental Blast: Haste (Elemental Totem) <- Elemental Blast (Elemental Talent)
	[173184] = 117014, -- Elemental Blast: Mastery (Elemental Totem) <- Elemental Blast (Elemental Talent)
	[182387] =  61882, -- Earthquake (Elemental)
	[187878] = 187874, -- Crash Lightning (Enhancement)
	[192082] = 192077, -- Wind Rush <- Wind Rush Totem (Talent)
	[194084] = 193796, -- Flametongue (Enhancement)
	[197385] = 197211, -- Fury of Air (Enhancement Talent)
	[198300] = 187874, -- Gathering Storms <- Crash Lightning (Enhancement)
	[201633] = 198838, -- Earthen Wall <- Earthen Wall Totem (Restoraton Talent)
	[201846] = 201845, -- Stormbringer (Enhancement)
	[204262] = 204261, -- Spectral Recovery (PvP Talent)
	[204361] = 193876, -- Bloodlust <- Shamanism (Enhancement PvP Talent)
	[204399] = 204398, -- Earthfury (Elemental PvP Talent)
	[206647] = 206642, -- Electrocute (Restoration PvP Talent)
	[207400] = 207401, -- Ancestral Vigor (Restoration Talent)
	[207498] = 207399, -- Ancestral Protection <- Ancestral Protection Totem (Restoration Talent)
	[208963] = 204330, -- Skyfury Totem (PvP Talent)
	[208997] = 204331, -- Counterstrike Totem (PvP Talent)
	[210927] = 211062, -- Static Cling (Enhancement PvP Talent)
	[211400] = 211062, -- Static Cling (Enhancement PvP Talent)
	[215785] = 201900, -- Hot Hand (Enhancement Talent)
	[216251] = 200071, -- Undulation (Restoration Talent)
	[224125] = 262624, -- Molten Weapon <- Elemental Spirits (Enhancement Talent)
	[224127] = 262624, -- Crackling Surge <- Elemental Spirits (Enhancement Talent)
	[236502] = 236501, -- Tidebringer (Restoration PvP Talent)
	[236746] = 204393, -- Control of Lava (Elemental PvP Talent)
	[260734] =  16166, -- Master of the Elements (Elemental Talent)
	[260881] = 260878, -- Spirit Wolf (Talent)
	[262652] = 262647, -- Forceful Winds (Enhancement Talent)
	[263806] = 192249, -- Wind Gust <- Storm Elemental (Elemental Talent)
	[268429] = 192087, -- Searing Assault (Enhancement Talent)
	[269808] = 260694, -- Exposed Elements (Elemental Talent)
	[271924] = 262624, -- Molten Weapon <- Elemental Spirits (Enhancement Talent)
	[273323] = 192106, -- Lightning Shield Overcharge <- Lightning Shield (Enhancement Talent)
	[280815] = 280614, -- Flash Flood (Restoration Talent)
	[320763] =  16191, -- Mana Tide Totem (Restoration)
	[327942] =   8512, -- Windfury Totem (Enhancement)
}, {
	-- map aura to modified spell(s)
	[ 53390] =  { -- Tidal Waves (Restoration)
		 8004, -- Healing Surge
		77472, -- Healing Wave
	},
	[ 77762] =  51505, -- Lava Surge (Elemental/Restoration) -> Lava Burst
	[118297] = 118297, -- Immolate (Fire Elemental) (Elemental Talent)
	[118337] = 118337, -- Harden Skin (Earth Elemental) (Elemental Talent)
	[118345] = 118345, -- Pulverize (Earth Elemental) (Elemental Talent)
	[157348] = 157348, -- Call Lightning (Storm Elemental) (Elemental Talent)
	[157375] = 157375, -- Eye of the Storm (Storm Elemental) (Elemental Talent)
	[157504] = 201764, -- Cloudburst Totem (Restoration Talent) -> Recall Cloudburst Totem
	[191634] = { -- Stormkeeper (Elemental Talent)
		188196, -- Lighting Bolt
		188443, -- Chain Lightning
	},
	[198300] =  17364, -- Gathering Storms -> Stormstrike (Enhancement)
	[204262] =   2645, -- Spectral Recovery (PvP Talent) -> Ghost Wolf
	[204361] = 204361, -- Bloodlust (Enhancement PvP Talent)
	[204399] =   8042, -- Earthfury (Elemental PvP Talent) -> Earth Shock
	[206647] =    370, -- Electrocute (Restoration PvP Talent) -> Purge
	[207400] = { -- Ancestral Vigor (Restoration Talent)
		 1064, -- Chain Heal
		 8004, -- Healing Surge
		73920, -- Riptide
		77472, -- Healing Wave
	},
	[210714] = 196840, -- Icefury (Elemental Talent) -> Frost Shock
	[210927] =  17364, -- Static Cling (Enhancement PvP Talent) -> Stormstrike NOTE: not with Windstrike
	[211400] =  17364, -- Static Cling (Enhancement PvP Talent) -> Stormstrike NOTE: not with Windstrike
	[215785] =  60103, -- Hot Hand (Enhancement Talent) -> Lava Lash
	[216251] = { -- Undulation (Restoration Talent)
		 8004, -- Healing Surge
		77472, -- Healing Wave
	},
	[224125] =  60103, -- Molten Weapon (Elemental Spirits - Enhancement Talent) -> Lava Lash
	[224127] =  17364, -- Crackling Surge (Enhancement Talent) -> Stormstrike
	[236502] =   1064, -- Tidebringer (Restoration PvP Talent) -> Chain Heal
	[236746] =  51505, -- Control of Lava (Elemental PvP Talent) -> Lava Burst
	[260734] =  51505, -- Master of the Elements (Elemental Talent) -> Lava Burst
	[260881] =   2645, -- Spirit Wolf (Talent)
	[262652] =   6603, -- Forceful Winds (Enhancement Talent) -> Auto Attack NOTE: Windfury
	[263806] = { -- Wind Gust (Elemental Talent)
		188196, -- Lighting Bolt
		188443, -- Chain Lightning
	},
	[268429] = 193796, -- Searing Assault (Enhancement Talent) -> Flametongue
	[269808] = 188196, -- Exposed Elements (Elemental Talent) -> Lightning Bolt
	[271924] =  60103, -- Molten Weapon (Elemental Spirits - Enhancement Talent) -> Lava Lash
	[280815] = { -- Flash Flood (Restoration Talent)
		  1064, -- Chain Heal
		  8004, -- Healing Surge
		 73920, -- Healing Rain
		 77472, -- Healing Wave
		197995, -- Wellspring
	},
})
