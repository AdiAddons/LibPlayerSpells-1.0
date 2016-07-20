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
lib:__RegisterSpells("DRUID", 70000, 2, {
	COOLDOWN = {
		  18562, -- Swiftmend
		  20484, -- Rebirth (brezz)
		  33917, -- Mangle
		 102401, -- Wild Charge (caster)
		 102417, -- Wild Charge (travel form)
		 197626, -- Starsurge (from Balance Affinity talent)
		 204066, -- Lunar Beam
		[106839] = "INTERRUPT", -- Skull Bash
		AURA = {
			HARMFUL = {
				  6795, -- Growl (taunt)
				 50259, -- Dazed
				 61391, -- Typhoon (slow) (knockback)
				192090, -- Thrash (bear)
				106830, -- Thrash (cat)
				214995, -- Bloody Paws (slow) (Guardian artifact)
				214998, -- Roar of the Crowd (Guardian artifact)
				CROWD_CTL = {
					    99, -- Incapacitating Roar (incapacitate)
					  5211, -- Mighty Bash (stun)
					 45334, -- Immobilized (root)
					102359, -- Mass Entaglement (root)
				},
			},
			HELPFUL = {
				77761, -- Stampeding Roar (bear)
				77764, -- Stampeding Roar (cat)
				DISPEL = {
					2782, -- Remove Corruption
				},
			},
			PERSONAL = {
				  1850, -- Dash
				  5215, -- Prowl
				 22842, -- Frenzied Regeneration
				102558, -- Incarnation: Guardian of Ursoc
				137452, -- Displacer Beast
				155835, -- Bristling Fur
				164545, -- Solar Empowerment
				164547, -- Lunar Empowerment
				201671, -- Gory Fur (Guardian artifact)
				BURST = {
					  5217, -- Tiger's Fury
					106951, -- Berserk
				},
				SURVIVAL = {
					 22812, -- Barkskin
					 61336, -- Survival Instincts
					158792, -- Pulverize
					200851, -- Rage of the Sleeper (Guardian artifact)
				},
			},
		},
	},
	AURA = {
		[339] = "CROWD_CTL", -- Entagling Roots (root)
		HARMFUL = {
			  1079, -- Rip
			 58180, -- Infected Wounds (slow)
			155722, -- Rake (from Feral Affinity)
			164812, -- Moonfire
			164815, -- Sunfire (from Balance Affinity talent)
			CROWD_CTL = {
				163505, -- Rake (stun)
				203123, -- Maim (stun)
			},
		},
		HELPFUL = {
			 774, -- Rejuvenation
			8936, -- Regrowth
		},
		PERSONAL = {
			 69369, -- Predatory Swiftness
			 93622, -- Mangle!
			213680, -- Guardian of Elune
			213708, -- Galactic Guardian
			SURVIVAL = {
				192081, -- Ironfur
				192083, -- Mark of Ursol
			},
		},
	},
}, {
	-- map aura to provider(s)
	[ 45334] = 102401, -- Immobilized (root) <- Wild Charge
	[ 50259] = 102401, -- Dazed <- Wild Charge
	[ 58180] = 48484, -- Infected Wounds (slow)
	[ 61391] = 132469, -- Typhoon (slow) (knockback)
	[ 69369] = 16974, -- Predatory Swiftness
	[ 93622] = 210706, -- Mangle! <- Gore
	[137452] = 102280, -- Displacer Beast
	[155722] = 202155, -- Rake <- Feral Affinity
	[158792] = 80313, -- Pulverize
	[163505] = 1822, -- Rake (stun)
	[164545] = 197626, -- Solar Empowerment <- Starsurge (from Balance Affinity talent)
	[164547] = 197626, -- Lunar Empowerment <- Starsurge (from Balance Affinity talent)
	[164812] = 8921, -- Moonfire
	[164815] = 197488, -- Sunfire (from Balance Affinity talent)
	[192090] = 77758, -- Thrash
	[201671] = 200854, -- Gory Fur (Guardian artifact)
	[203123] = 22570, -- Maim (stun)
	[213680] = 155578, -- Guardian of Elune
	[213708] = 203964, -- Galactic Guardian
	[214995] = 200515, -- Bloody Paws (slow) (Guardian artifact)
	[214998] = 214996, -- Roar of the Crowd (Guardian artifact)
}, {
	-- map aura to modified spell(s)
	[ 45334] = 16979, -- Immobilized (root) -> Wild Charge (bear)
	[ 50259] = 49376, -- Dazed -> Wild Charge (cat)
	[ 58180] = 1822, -- Infected Wounds (slow) -> Rake
	[ 69369] = { -- Predatory Swiftness
		  339, -- Entagling Roots
		 5185, -- Healing Touch
		20484, -- Rebirth
	},
	[ 93622] = 33917, -- Mangle! -> Mangle
	[155722] = 1822, -- Rake
	[164545] = 197629, -- Solar Empowerment -> Solar Wrath (from Balance Affinity talent)
	[164547] = 197628, -- Lunar Empowerment -> Lunar Strike (from Balance Affinity talent)
	[164815] = 197630, -- Sunfire (from Balance Affinity talent)
	[201671] = { -- Gory Fur (Guardian artifact)
		192081, -- Ironfur
		192083, -- Mark of Ursol
	},
	[213680] = 33917, -- Guardian of Elune -> Mangle
	[213708] = 8921, -- Galactic Guardian -> Moonfire
	[214995] = 77758, -- Bloody Paws (slow) (Guardian artifact) -> Thrash
	[214998] = { -- Roar of the Crowd (Guardian artifact)
		77761, -- Stampeding Roar (bear)
		77764, -- Stampeding Roar (cat)
	},
})
