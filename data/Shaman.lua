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
				118297, -- Immolate (Fire Elemental) (Elemental talent)
				157375, -- Eye of the Storm (Storm Elemental) (Elemental talent)
				188389, -- Flame Shock (Elemental)
				CROWD_CTRL = {
					[ 51514] = 'INCAPACITATE', -- Hex
					STUN = {
						118345, -- Pulverize (Earth Elemental) (Elemental talent)
						118905, -- Static Charge
					},
				},
				SNARE = {
					  3600, -- Earthbind
					[51490] = 'KNOCKBACK', -- Thunderstorm (Elemental)
				},
			},
			HELPFUL = {
				192082, -- Wind Rush (Elemental talent)
			},
			PERSONAL = {
				 77762, -- Lava Surge (Elemental)
				108281, -- Ancestral Guidance (Elemental talent)
				118522, -- Elemental Blast: Crtical Strike (Elemental talent)
				173183, -- Elemental Blast: Haste (Elemental talent)
				173184, -- Elemental Blast: Mastery (Elemental talent)
				210714, -- Icefury (Elemental talent)
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
			SNARE = {
				196840, -- Frost Shock
			},
		},
		HELPFUL = {
			546, -- Water Walking
			974, -- Earth Shield
		},
		PERSONAL = {
			2645, -- Ghost Wolf
			6196, -- Far Sight
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
	[ 77762] =  77756, -- Lava Surge (Elemental)
	[118297] = 117013, -- Immolate <- Primal Elementalist (Elemental talent)
	[118337] = 117013, -- Harden Skin <- Primal Elementalist (Elemental talent)
	[118345] = 117013, -- Pulverize <- Primal Elementalist (Elemental talent)
	[118522] = 117014, -- Elemental Blast: Crtical Strike (Elemental totem) <- Elemental Blast (Elemental talent)
	[118905] = 192058, -- Static Charge <- Capacitor Totem
	[157348] = 117013, -- Call Lightning <- Primal Elementalist (Elemental talent)
	[157375] = 117013, -- Eye of the Storm <- Primal Elementalist (Elemental talent)
	[173183] = 117014, -- Elemental Blast: Haste (Elemental totem) <- Elemental Blast (Elemental talent)
	[173184] = 117014, -- Elemental Blast: Mastery (Elemental totem) <- Elemental Blast (Elemental talent)
	[182387] =  61882, -- Earthquake (Elemental)
	[192082] = 192077, -- Wind Rush <- Wind Rush Totem (Elemental talent)
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
	[210714] = 196840, -- Icefury (Elemental talent) -> Frost Shock
	[260734] =  51505, -- Master of the Elements (Elemental talent) -> Lava Burst
	[260881] =   2645, -- Spirit Wolf (Elemental talent)
	[263806] = { -- Wind Gust (Elemental talent)
		188196, -- Lighting Bolt
		188443, -- Chain Lightning
	},
	[269808] = 188196, -- Exposed Elements (Elemental talent) -> Lightning Bolt
})
