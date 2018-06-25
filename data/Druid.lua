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
		  18960, -- Teleport: Moonglade
		  20484, -- Rebirth
		[106839] = 'INTERRUPT', -- Skull Bash (Guardian)
		AURA = {
			HARMFUL = {
				164812, -- Moonfire (Guardian)
				106830, -- Thrash (Guardian - Cat)
				192090, -- Thrash (Guardian - Bear)
				CROWD_CTRL = {
					[ 339] = 'ROOT', -- Entangling Roots (Guardian)
					[6795] = 'TAUNT', -- Growl (Guardian)
					INCAPACITATE = {
						  99, -- Incapacitating Roar (Guardian)
						2637, -- Hibernate -- TODO: category
					},
				},
			},
			HELPFUL = {
				77761, -- Stampeding Roar (Guardian)
			},
			PERSONAL = {
				 1850, -- Dash (Feral/Guardian)
				 5215, -- Prowl (Guardian)
				22842, -- Frenzied Regeneration (Guardian)
				93622, -- Gore (Guardian)
				SURVIVAL = {
					22812, -- Barkskin (Guardian)
					61336, -- Survival Instincts (Guardian)
				},
			},
		},
		DISPEL = {
			HELPFUL = {
				[2782] = 'CURSE POISON', -- Remove Corruption (Balance/Feral/Guardian)
			},
		},
		POWER_REGEN = {
			33917, -- Mangle (Guardian)
			77758, -- Thrash (Guardian - Bear)
		},
	},
	AURA = {
		HELPFUL = {
			8936, -- Regrowth (Guardian)
		},
		PERSONAL = {
			SURVIVAL = {
				192081, -- Ironfur (Guardian)
			},
		},
	},
}, {
	-- map aura to provider(s)
	[ 93622] = 210706, -- Gore (Guardian)
	[164812] =  8921, -- Moonfire (Guardian)
	[192090] = 77758, -- Thrash (Guardian - Bear)
}, {
	-- map aura to modified spell(s)
	[ 93622] = 33917, -- Gore (Guardian) -> Mangle
})
