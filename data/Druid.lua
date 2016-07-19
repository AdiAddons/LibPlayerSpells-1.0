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
lib:__RegisterSpells("DRUID", 70000, 1, {
	COOLDOWN = {
		  33917, -- Mangle
		[106839] = "INTERRUPT", -- Skull Bash
		AURA = {
			HARMFUL = {
				  6795, -- Growl (taunt)
				192090, -- Thrash (bear)
				106830, -- Thrash (cat)
				CROWD_CTL = {
					99, -- Incapacitating Roar (incapacitate)
				},
			},
			HELPFUL = {
				77761, -- Stampeding Roar (bear)
				77764, -- Stampeding Roar (cat)
			},
			PERSONAL = {
				 1850, -- Dash
				 5215, -- Prowl
				22842, -- Frenzied Regeneration
				SURVIVAL = {
					22812, -- Barkskin
					61336, -- Survival Instincts
				},
			},
		},
	},
	AURA = {
		[339] = "CROWD_CTL", -- Entagling Roots (root)
		HARMFUL = {
			164812, -- Moonfire
		},
		PERSONAL = {
			93622, -- Mangle!
			SURVIVAL = {
				192081, -- Ironfur
				192083, -- Mark of Ursol
			},
		},
	},
}, {
	-- map aura to provider(s)
	[ 93622] = 210706, -- Mangle! <- Gore
	[164812] = 8921, -- Moonfire
	[192090] = 77758, -- Thrash
}, {
	-- map aura to modified spell(s)
	[93622] = 33917, -- Mangle! -> Mangle
})
