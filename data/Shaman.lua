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
		 198067, -- Fire Elemental (Elemental)
		 198103, -- Earth Elemental
		[ 57994] = 'INTERRUPT', -- Wind Shear
		[193786] = 'POWER_REGEN', -- Rockbiter (Enhancement)
		AURA = {
			HARMFUL = {
				118297, -- Immolate (Fire Elemental) (Elemental talent)
				157375, -- Eye of the Storm (Storm Elemental) (Elemental talent)
				188389, -- Flame Shock (Elemental)
				208997, -- Counterstrike Totem (Elemental honor talent)
				CROWD_CTRL = {
					[ 51514] = 'INCAPACITATE', -- Hex
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
				  8178, -- Grounding Totem Effect (Elemental honor talent)
				192082, -- Wind Rush (Elemental talent)
				208963, -- Skyfury Totem (Elemental honor talent)
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
				210714, -- Icefury (Elemental talent)
				236746, -- Control of Lava (Elemental honor talent)
				260734, -- Master of the Elements (Elemental talent)
				263806, -- Wind Gust (Elemental talent)
				BURST = {
					114050, -- Ascendance (Elemental talent)
					191634, -- Stormkeeper (Elemental talent)
				},
				SURVIVAL = {
					108271, -- Astral Shift
					118337, -- Harden Skin (Earth Elemental) (Elemental talent)
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
			},
		},
		HELPFUL = {
			546, -- Water Walking
			974, -- Earth Shield
		},
		PERSONAL = {
			  2645, -- Ghost Wolf
			  6196, -- Far Sight
			196834, -- Frostbrand (Enhancement)
			201846, -- Stormbringer (Enhancement)
			204262, -- Spectral Recovery (Elemental honor talent)
			SURVIVAL = {
				260881, -- Spirit Wolf (Elemental talent)
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
	[  8178] = 204336, -- Grounding Totem Effect (Elemental honor talent) <- Grounding Totem
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
	[192082] = 192077, -- Wind Rush <- Wind Rush Totem (Elemental talent)
	[194084] = 193796, -- Flametongue (Enhancement)
	[201846] = 201845, -- Stormbringer (Enhancement)
	[204262] = 204261, -- Spectral Recovery (Elemental honor talent)
	[204399] = 204398, -- Earthfury (Elemental honor talent)
	[208963] = 204330, -- Skyfury Totem (Elemental honor talent)
	[208997] = 204331, -- Counterstrike Totem (Elemental honor talent)
	[236746] = 204393, -- Control of Lava (Elemental honor talent)
	[260734] =  16166, -- Master of the Elements (Elemental talent)
	[260881] = 260878, -- Spirit Wolf (Elemental talent)
	[263806] = 192249, -- Wind Gust <- Storm Elemental (Elemental talent)
	[269808] = 260694, -- Exposed Elements (Elemental talent)
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
	[201846] =  17364, -- Stormbringer (Enhancement) -> Stormstrike
	[204262] =   2645, -- Spectral Recovery (Elemental honor talent) -> Ghost Wolf
	[204399] =   8042, -- Earthfury (Elemental honor talent) -> Earth Shock
	[210714] = 196840, -- Icefury (Elemental talent) -> Frost Shock
	[236746] =  51505, -- Control of Lava (Elemental honor talent) -> Lava Burst
	[260734] =  51505, -- Master of the Elements (Elemental talent) -> Lava Burst
	[260881] =   2645, -- Spirit Wolf (Elemental talent)
	[263806] = { -- Wind Gust (Elemental talent)
		188196, -- Lighting Bolt
		188443, -- Chain Lightning
	},
	[269808] = 188196, -- Exposed Elements (Elemental talent) -> Lightning Bolt
})
