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
				SURVIVAL = {
					 22812, -- Barkskin
					 61336, -- Survival Instincts
					158792, -- Pulverize
				},
			},
		},
	},
	AURA = {
		[339] = "CROWD_CTL", -- Entagling Roots (root)
		HARMFUL = {
			  1079, -- Rip
			155722, -- Rake
			164812, -- Moonfire
			164815, -- Sunfire (from Balance Affinity talent)
			CROWD_CTL = {
				163505, -- Rake (stun)
			},
		},
		HELPFUL = {
			 774, -- Rejuvenation
			8936, -- Regrowth
		},
		PERSONAL = {
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
	[ 61391] = 132469, -- Typhoon (slow) (knockback)
	[ 93622] = 210706, -- Mangle! <- Gore
	[137452] = 102280, -- Displacer Beast
	[155722] = 1822, -- Rake
	[158792] = 80313, -- Pulverize
	[163505] = 1822, -- Rake (stun)
	[164545] = 197626, -- Solar Empowerment <- Starsurge (from Balance Affinity talent)
	[164547] = 197626, -- Lunar Empowerment <- Starsurge (from Balance Affinity talent)
	[164812] = 8921, -- Moonfire
	[164815] = 197488, -- Sunfire (from Balance Affinity talent)
	[192090] = 77758, -- Thrash
	[213680] = 155578, -- Guardian of Elune
	[213708] = 203964, -- Galactic Guardian
}, {
	-- map aura to modified spell(s)
	[ 45334] = 16979, -- Immobilized (root) -> Wild Charge (bear)
	[ 50259] = 49376, -- Dazed -> Wild Charge (cat)
	[ 93622] = 33917, -- Mangle! -> Mangle
	[164545] = 197629, -- Solar Empowerment -> Solar Wrath (from Balance Affinity talent)
	[164547] = 197628, -- Lunar Empowerment -> Lunar Strike (from Balance Affinity talent)
	[164815] = 197630, -- Sunfire (from Balance Affinity talent)
	[213680] = 33917, -- Guardian of Elune -> Mangle
	[213708] = 8921, -- Galactic Guardian -> Moonfire
})
