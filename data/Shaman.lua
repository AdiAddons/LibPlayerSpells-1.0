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
		  17364, -- Stormstrike (Enhancement)
		  51505, -- Lava Burst (Elemental)
		  51533, -- Feral Spirit (Enhancement)
		 115356, -- Windstrike (Enhancement talent) NOTE: when Ascendance is active
		 196884, -- Feral Lunge (Enhancement talent)
		 198067, -- Fire Elemental (Elemental)
		 198103, -- Earth Elemental
		[ 57994] = 'INTERRUPT', -- Wind Shear
		[193786] = 'POWER_REGEN', -- Rockbiter (Enhancement)
		AURA = {
			HARMFUL = {
				118297, -- Immolate (Fire Elemental) (Elemental talent)
				157375, -- Eye of the Storm (Storm Elemental) (Elemental talent)
				188089, -- Earthen Spike (Enhancement talent)
				188389, -- Flame Shock (Elemental)
				208997, -- Counterstrike Totem (Elemental/Enhancement honor talent)
				210927, -- Static Cling (Enhancement honor talent)
				268429, -- Searing Assault (Enhancement talent)
				271924, -- Molten Weapon (Enhancement talent)
				CROWD_CTRL = {
					INCAPACITATE = {
						 51514, -- Hex
						197214, -- Sundering (Enhancement talent)
					},
					STUN = {
						118345, -- Pulverize (Earth Elemental) (Elemental talent)
						118905, -- Static Charge
						204437, -- Lightning Lasso (Elemental honor talent)
					},
				},
				SNARE = {
					  3600, -- Earthbind
					[51490] = 'KNOCKBACK', -- Thunderstorm (Elemental)
				},
			},
			HELPFUL = {
				  8178, -- Grounding Totem Effect (Elemental/Enhancement honor talent)
				192082, -- Wind Rush (Elemental/Enhancement talent)
				204366, -- Thundercharge (Enhancement honor talent)
				BURST = {
					204361, -- Bloodlust (Enhancement honor talent)
					208963, -- Skyfury Totem (Elemental/Enhancement honor talent)
				},
			},
			PERSONAL = {
				 58875, -- Spirit Walk (Enhancement)
				 77762, -- Lava Surge (Elemental)
				108281, -- Ancestral Guidance (Elemental talent)
				118522, -- Elemental Blast: Crtical Strike (Elemental talent)
				173183, -- Elemental Blast: Haste (Elemental talent)
				173184, -- Elemental Blast: Mastery (Elemental talent)
				187878, -- Crash Lightning (Enhancement)
				194084, -- Flametongue (Enhancement)
				202004, -- Landslide (Enhancement talent)
				210714, -- Icefury (Elemental talent)
				211400, -- Static Cling (Enhancement honor talent)
				224125, -- Molten Weapon (Enhancement talent)
				224127, -- Crackling Surge (Enhancement talent)
				236746, -- Control of Lava (Elemental honor talent)
				260734, -- Master of the Elements (Elemental talent)
				263806, -- Wind Gust (Elemental talent)
				BURST = {
					114050, -- Ascendance (Elemental talent)
					114051, -- Ascendance (Enhancement talent)
					191634, -- Stormkeeper (Elemental talent)
				},
				SURVIVAL = {
					108271, -- Astral Shift
					118337, -- Harden Skin (Earth Elemental) (Elemental talent)
					210918, -- Ethereal Form (Enhancement honor talent)
				},
			},
			PET = {
				157348, -- Call Lightning (Storm Elemental) (Elemental talent)
			},
		},
	},
	AURA = {
		HARMFUL = {
			269808, -- Exposed Elements (Elemental talent)
			[182387] = 'KNOCKBACK', -- Earthquake (Elemental)
			CROWD_CTRL = {
				[204399] = 'STUN', -- Earthfury (Elemental honor talent)
			},
			SNARE = {
				147732, -- Frostbrand (Enhancement)
				196840, -- Frost Shock (Elemental)
				197385, -- Fury of Air (Enhancement talent)
			},
		},
		HELPFUL = {
			546, -- Water Walking
			974, -- Earth Shield (Elemental/Enhancement talent)
		},
		PERSONAL = {
			  2645, -- Ghost Wolf
			  6196, -- Far Sight
			192106, -- Lightning Shield (Enhancement talent)
			196834, -- Frostbrand (Enhancement)
			197211, -- Fury of Air (Enhancement talent)
			201846, -- Stormbringer (Enhancement)
			202192, -- Resonance Totem (Elemental talent)
			204262, -- Spectral Recovery (Elemental/Enhancement honor talent)
			210652, -- Storm Totem (Elemental talent)
			210658, -- Ember Totem (Elemental talent)
			210659, -- Tailwind Totem (Elemental talent)
			215785, -- Hot Hand (Enhacement talent)
			262397, -- Storm Totem (Enhancement talent)
			262399, -- Ember Totem (Enhancement talent)
			262400, -- Tailwind Totem (Enhancement talent)
			262417, -- Resonance Totem (Enhancement talent)
			262652, -- Forceful Winds (Enhancement talent)
			273323, -- Lightning Shield Overcharge (Enhancement talent)
			SURVIVAL = {
				260881, -- Spirit Wolf (talent)
			},
		},
	},
	DISPEL = {
		[  370] = 'HARMFUL MAGIC', -- Purge
		[51886] = 'HELPFUL CURSE', -- Cleanse Spirit (Elemental/Enhancement)
	},
}, {
	-- map aura to provider(s)
	[  3600] =   2484, -- Earthbind <- Earthbind Totem
	[  8178] = 204336, -- Grounding Totem Effect (Elemental/Enhancement honor talent) <- Grounding Totem
	[ 77762] =  77756, -- Lava Surge (Elemental)
	[118297] = 117013, -- Immolate <- Primal Elementalist (Elemental talent)
	[118337] = 117013, -- Harden Skin <- Primal Elementalist (Elemental talent)
	[118345] = 117013, -- Pulverize <- Primal Elementalist (Elemental talent)
	[118522] = 117014, -- Elemental Blast: Crtical Strike (Elemental totem) <- Elemental Blast (Elemental talent)
	[118905] = 192058, -- Static Charge <- Capacitor Totem
	[147732] = 196834, -- Frostbrand (Enhancement)
	[157348] = 117013, -- Call Lightning <- Primal Elementalist (Elemental talent)
	[157375] = 117013, -- Eye of the Storm <- Primal Elementalist (Elemental talent)
	[173183] = 117014, -- Elemental Blast: Haste (Elemental totem) <- Elemental Blast (Elemental talent)
	[173184] = 117014, -- Elemental Blast: Mastery (Elemental totem) <- Elemental Blast (Elemental talent)
	[182387] =  61882, -- Earthquake (Elemental)
	[187878] = 187874, -- Crash Lightning (Enhancement)
	[192082] = 192077, -- Wind Rush <- Wind Rush Totem (Elemental/Enhancement talent)
	[194084] = 193796, -- Flametongue (Enhancement)
	[197385] = 197211, -- Fury of Air (Enhancement talent)
	[201846] = 201845, -- Stormbringer (Enhancement)
	[202004] = 197992, -- Landslide (Enhancement talent)
	[202192] = 210643, -- Resonance Totem <- Totem Mastery (Elemental talent)
	[204262] = 204261, -- Spectral Recovery (Elemental/Enhancement honor talent)
	[204361] = 193876, -- Bloodlust <- Shamanism (Enhancement honor talent)
	[204399] = 204398, -- Earthfury (Elemental honor talent)
	[208963] = 204330, -- Skyfury Totem (Elemental honor talent)
	[208997] = 204331, -- Counterstrike Totem (Elemental/Enhancement honor talent)
	[210652] = 210643, -- Storm Totem <- Totem Mastery (Elemental talent)
	[210658] = 210643, -- Ember Totem <- Totem Mastery (Elemental talent)
	[210659] = 210643, -- Tailwind Totem <- Totem Mastery (Elemental talent)
	[210927] = 211062, -- Static Cling (Enhancement honor talent)
	[211400] = 211062, -- Static Cling (Enhancement honor talent)
	[215785] = 201900, -- Hot Hand (Enhacement talent)
	[224125] = 262624, -- Molten Weapon <- Elemental Spirits (Enhancement talent)
	[224127] = 262624, -- Crackling Surge <- Elemental Spirits (Enhancement talent)
	[236746] = 204393, -- Control of Lava (Elemental honor talent)
	[260734] =  16166, -- Master of the Elements (Elemental talent)
	[260881] = 260878, -- Spirit Wolf (talent)
	[262397] = 262395, -- Storm Totem <- Totem Mastery (Enhancement talent)
	[262399] = 262395, -- Ember Totem <- Totem Mastery (Enhancement talent)
	[262400] = 262395, -- Tailwind Totem <- Totem Mastery (Enhancement talent)
	[262417] = 262395, -- Resonance Totem <- Totem Mastery (Enhancement talent)
	[262652] = 262647, -- Forceful Winds (Enhancement talent)
	[263806] = 192249, -- Wind Gust <- Storm Elemental (Elemental talent)
	[268429] = 192087, -- Searing Assault (Enhancement talent)
	[269808] = 260694, -- Exposed Elements (Elemental talent)
	[271924] = 262624, -- Molten Weapon <- Elemental Spirits (Enhancement talent)
	[273323] = 192106, -- Lightning Shield Overcharge <- Lightning Shield (Enhancement talent)
}, {
	-- map aura to modified spell(s)
	[ 77762] =  51505, -- Lava Surge (Elemental) -> Lava Burst
	[118297] = 118297, -- Immolate (Fire Elemental) (Elemental talent)
	[118337] = 118337, -- Harden Skin (Earth Elemental) (Elemental talent)
	[118345] = 118345, -- Pulverize (Earth Elemental) (Elemental talent)
	[157348] = 157348, -- Call Lightning (Storm Elemental) (Elemental talent)
	[157375] = 157375, -- Eye of the Storm (Storm Elemental) (Elemental talent)
	[191634] = { -- Stormkeeper (Elemental talent)
		188196, -- Lighting Bolt
		188443, -- Chain Lightning
	},
	[201846] =  {-- Landslide (Enhancement talent)
		 17364, -- Stormstrike
		115356, -- Windstrike (Enhancement talent) NOTE: when Ascendance is active
	},
	[202004] =  { -- Landslide (Enhancement talent)
		 17364, -- Stormstrike
		115356, -- Windstrike (Enhancement talent) NOTE: when Ascendance is active
	},
	[204262] =   2645, -- Spectral Recovery (Elemental/Enhancement honor talent) -> Ghost Wolf
	[204361] = 204361, -- Bloodlust (Enhancement honor talent)
	[204399] =   8042, -- Earthfury (Elemental honor talent) -> Earth Shock
	[210714] = 196840, -- Icefury (Elemental talent) -> Frost Shock
	[210927] =  17364, -- Static Cling (Enhancement honor talent) -> Stormstrike NOTE: not with Windstrike
	[211400] =  17364, -- Static Cling (Enhancement honor talent) -> Stormstrike NOTE: not with Windstrike
	[215785] =  60103, -- Hot Hand (Enhacement talent) -> Lava Lash
	[224125] =  60103, -- Molten Weapon (Enhancement talent) -> Lava Lash
	[224127] =  17364, -- Crackling Surge (Enhancement talent) -> Stormstrike
	[236746] =  51505, -- Control of Lava (Elemental honor talent) -> Lava Burst
	[260734] =  51505, -- Master of the Elements (Elemental talent) -> Lava Burst
	[260881] =   2645, -- Spirit Wolf (talent)
	[262652] =   6603, -- Forceful Winds (Enhancement talent) -> Auto Attack NOTE: Windfury
	[263806] = { -- Wind Gust (Elemental talent)
		188196, -- Lighting Bolt
		188443, -- Chain Lightning
	},
	[268429] = 193796, -- Searing Assault (Enhancement talent) -> Flametongue
	[269808] = 188196, -- Exposed Elements (Elemental talent) -> Lightning Bolt
	[271924] =  60103, -- Molten Weapon (Enhancement talent) -> Lava Lash
})
