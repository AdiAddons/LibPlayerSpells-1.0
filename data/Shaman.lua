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

local lib = LibStub("LibPlayerSpells-1.0")
if not lib then return end
lib:__RegisterSpells("SHAMAN", 70000, 5, {
	COOLDOWN = {
		    556, -- Astral Recall
		  17364, -- Stormstrike
		  51533, -- Feral Spirit
		 157375, -- Gale Force (from Primal Stone Elemental) (knockback)
		 192063, -- Gust of Wind
		 192222, -- Liquid Magma Totem
		 192249, -- Stone Elemental
		 198067, -- Fire Elemental
		 198103, -- Earth Elemental
		[ 57994] = "INTERRUPT", -- Wind Shear
		AURA = {
			HELPFUL = {
				157384, -- Eye of the Storm (Primal Stone Elemental)
				192082, -- Wind Rush
			},
			HARMFUL = {
				 51490, -- Thunderstorm (slow) (knockback)
				116947, -- Earthbind (slow)
				118297, -- Immolate (Primal Fire Elemental)
				CROWD_CTL = {
					 51514, -- Hex (incapacitate)
					 64695, -- Earthgrab (root)
					118345, -- Pulverize (Primal Earth Elemental) (stun)
					118905, -- Static Charge (stun)
					196942, -- Hex (Voodoo Totem) (incapacitate)
				},
			},
			PERSONAL = {
				   58875, -- Spirit Walk
				  108281, -- Ancestral Guidance
				  118522, -- Elemental Blast: Critical Strike
				  173183, -- Elemental Blast: Haste
				  173184, -- Elemental Blast: Mastery
				  187878, -- Crash Lightning
				  191877, -- Power of Maelstrom (Elemental artifact)
				  205495, -- Stormkeeper (Elemental artifact)
				  210714, -- Icefury
				 [108271] = "SURVIVAL", -- Astral Shift
				 BURST = {
					 16166, -- Elemental Mastery
					114050, -- Ascendance
				 },
			},
			PET = {
				118337, -- Harden Skin (Primal Earth Elemental)
				157348. -- Call Lightning (Primal Stone Elemental)
			},
		},
	},
	AURA = {
		HELPFUL = {
			546, -- Water Walking
		},
		HARMFUL = {
			182387, -- Earthquake
			188389, -- Flame Shock
			196840, -- Frost Shock (slow)
			197209, -- Lightning Rod
			CROWD_CTL = {
				 77505, -- Earthquake (stun)
			},
		},
		PERSONAL = {
			 2645, -- Ghost Wolf
			 6196, -- Far Sight
			77762, -- Lava Surge
		   194084, -- Flametongue
		   196834, -- Frostbrand
		   201846, -- Stormbringer
		   202192, -- Resonance Totem
		   210652, -- Storm Totem
		   210658, -- Ember Totem
		   210659, -- Tailwind Totem
		},
	},
	DISPEL = {
		[  370] = "HARMFUL", -- Purge
		[51866] = "HELPFUL COOLDOWN", -- Cleanse Spirit
	},
}, {
	-- map aura to provider(s)
	[ 64695] = 51485, -- Earthgrab (root) <- Earthgrab Totem
	[ 77505] = 61882, -- Earthquake (stun) <- Earthquake Totem
	[ 77762] = 77756, -- Lava Surge
	[116947] = 51485, -- Earthbind (slow) <- Earthgrab Totem
	[118522] = 117014, -- Elemental Blast: Critical Strike <- Elemental Blast
	[118905] = 192058, -- Static Charge (stun) <- Lightning Surge Totem
	[157384] = 157382, -- Eye of the Storm (Primal Stone Elemental)
	[173183] = 117014, -- Elemental Blast: Haste <- Elemental Blast
	[173184] = 117014, -- Elemental Blast: Mastery <- Elemental Blast
	[182387] = 61882, -- Earthquake (knockback) <- Earthquake Totem
	[187878] = 187874, -- Crash Lightning
	[191877] = 191861, -- Power of Maelstrom (Elemental artifact)
	[192082] = 192077, -- Wind Rush
	[194084] = 193796, -- Flametounge
	[196942] = 196932, -- Hex (incapacitate) <- Voodoo Totem
	[197209] = 210689, -- Lightning Rod
	[201846] = 201845, -- Stormbringer
	[202192] = 210643, -- Resonance Totem <- Totem Mastery
	[210652] = 210643, -- Storm Totem <- Totem Mastery
	[210658] = 210643, -- Ember Totem <- Totem Mastery
	[210659] = 210643, -- Tailwind Totem <- Totem Mastery
}, {
	-- map aura to modified spell(s)
	[ 77762] = 51505, -- Lava Surge -> Lava Burst
	[114050] = { -- Ascendance
		 51505, -- Lava Burst
		114074, -- Lava Beam
	},
	[191877] = 188196, -- Power of Maelstrom (Elemental artifact) -> Lightning Bolt
	[197209] = { -- Lightning Rod
		188196, -- Lightning Bolt
		188443, -- Lightning Chain
	},
	[201846] = 17364, -- Stormbringer -> Stormstrike
	[205495] = { -- Stormkeeper (Elemental artifact)
		188196, -- Lightning Bolt
		188443, -- Chain Lightning
	},
	[210714] = 196840, -- Icefury -> Frost Shock
})
