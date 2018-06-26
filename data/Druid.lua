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

local lib = LibStub('LibPlayerSpells-1.0')
if not lib then return end
lib:__RegisterSpells('DRUID', 80000, 1, {
	COOLDOWN = {
		  18562, -- Swiftmend
		  18960, -- Teleport: Moonglade
		  20484, -- Rebirth
		 102401, -- Wild Charge (talent - non-shapeshifted)
		 102417, -- Wild Charge (talent - travel)
		 102383, -- Wild Charge (talent - moonkin)
		 204066, -- Lunar Beam (Guardian talent)
		[106839] = 'INTERRUPT', -- Skull Bash (Guardian)
		AURA = {
			HARMFUL = {
				 164812, -- Moonfire (Guardian)
				 106830, -- Thrash (cat)
				 192090, -- Thrash (bear)
				 206891, -- Intimidated (Guardian honor talent)
				[201664] = 'SURVIVAL', -- Demoralizing Roar (Guardian honor talent)
				CROWD_CTRL = {
					[  6795] = 'TAUNT', -- Growl (Guardian)
					[236748] = 'DISORIENT', -- Intimidating Roar (Guardian talent)
					INCAPACITATE = {
						  99, -- Incapacitating Roar (Guardian)
						2637, -- Hibernate -- TODO: category
					},
					ROOT = {
						   339, -- Entangling Roots (Guardian)
						 45334, -- Immobilized (Guardian talent - bear)
						102359, -- Mass Entanglement (Guardian talent)
					},
					STUN = {
						  5211, -- Mighty Bash (Guardian talent)
						202244, -- Overrun (Guardian honor talent)
					},
				},
				SNARE = {
					50259, -- Dazed (talent - cat)
					61391, -- Typhoon (Guardian talent)
				}
			},
			HELPFUL = {
				48438, -- Wild Growth
				77761, -- Stampeding Roar (Guardian)
			},
			PERSONAL = {
				   1850, -- Dash (Feral/Guardian)
				   5215, -- Prowl (Guardian)
				  22842, -- Frenzied Regeneration (Guardian)
				  93622, -- Gore (Guardian)
				 102416, -- Wild Charge (talent - aquatic)
				 164545, -- Solar Empowerment (moonkin)
				 164547, -- Lunar Empowerment (moonkin)
				 203975, -- Earthwarden (Guardian talent)
				 213680, -- Guardian of Elune (Guardian talent)
				 236185, -- Master Shapeshifter (Guardian honor talent)
				 252216, -- Tiger Dash (Guardian talent)
				[155835] = 'POWER_REGEN', -- Bristling Fur (Guardian talent)
				SURVIVAL = {
					 22812, -- Barkskin (Guardian)
					 61336, -- Survival Instincts (Guardian)
					102558, -- Incarnation: Guardian of Ursoc (Guardian talent)
				},
			},
		},
		DISPEL = {
			HELPFUL = {
				[2782] = 'CURSE POISON', -- Remove Corruption (Balance/Feral/Guardian)
			},
		},
		KNOCKBACK = {
			132469, -- Typhoon (Guardian talent)
			202246, -- Overrun (Guardian honor talent)
		},
		POWER_REGEN = {
			33917, -- Mangle (Guardian)
			77758, -- Thrash (bear)
		},
	},
	AURA = {
		HARMFUL = {
			  1079, -- Rip
			155722, -- Rake
			164815, -- Sunfire (moonkin)
		},
		HELPFUL = {
			   774, -- Rejuvenation
			  8936, -- Regrowth (Guardian)
		},
		PERSONAL = {
			158792, -- Pulverize (Guardian talent)
			213708, -- Galactic Guardian (Guardian talent)
			236187, -- Master Shapeshifter (Guardian honor talent)
			279943, -- Sharpened Claws (Guardian honor talent)
			SURVIVAL = {
				192081, -- Ironfur (Guardian)
			},
		},
	},
}, {
	-- map aura to provider(s)
	[ 45334] = 102401, -- Immobilized <- Wild Charge (talent - bear)
	[ 50259] = 102401, -- Dazed <- Wild Charge (talent - cat)
	[ 61391] = 132469, -- Typhoon (Guardian talent)
	[ 93622] = 210706, -- Gore (Guardian)
	[102416] = 102401, -- Wild Charge (talent - aquatic)
	[155722] =   1822, -- Rake
	[158792] =  80313, -- Pulverize (Guardian talent)
	[164545] = 197626, -- Solar Empowerment <- Starsurge (moonkin)
	[164547] = 197626, -- Lunar Empowerment <- Starsurge (moonkin)
	[164812] =   8921, -- Moonfire (Guardian)
	[164815] = 197630, -- Sunfire (moonkin)
	[192090] =  77758, -- Thrash (bear)
	[202244] = 202246, -- Overrun (Guardian honor talent)
	[203975] = 203974, -- Earthwarden (Guardian talent)
	[206891] = 207017, -- Intimidated <- Alpha Chalenge (Guardian honor talent)
	[213680] = 155578, -- Guardian of Elune (Guardian talent)
	[213708] = 203964, -- Galactic Guardian (Guardian talent)
	[236185] = 236144, -- Master Shapeshifter (Guardian honor talent)
	[236187] = 236144, -- Master Shapeshifter (Guardian honor talent)
	[279943] = 202110, -- Sharpened Claws (Guardian honor talent)
}, {
	-- map aura to modified spell(s)
	[ 45334] =  16979, -- Immobilized -> Wild Charge (talent - bear)
	[ 50259] =  49376, -- Dazed -> Wild Charge (talent - cat)
	[ 93622] =  33917, -- Gore (Guardian) -> Mangle
	[102416] = 102416, -- Wild Charge (talent - aquatic)
	[164545] = 197629, -- Solar Empowerment -> Solar Wrath (moonkin)
	[164547] = 197628, -- Lunar Empowerment -> Lunar Strike (moonkin)
	[203975] = { -- Earthwarden (Guardian talent)
		 77758, -- Thrash (bear)
		106830, -- Thrash (cat)
	},
	[213680] = { -- Guardian of Elune (Guardian talent)
		 22842, -- Frenzied Regeneration
		192081, -- Ironfur
	},
	[213708] =   8921, -- Galactic Guardian (Guardian talent) -> Moonfire
	[236185] =  18562, -- Master Shapeshifter (Guardian honor talent) -> Swiftmend
	[236187] = 197625, -- Master Shapeshifter (Guardian honor talent) -> Moonkin Form
	[279943] =   6807, -- Sharpened Claws (Guardian honor talent) -> Maul
})
