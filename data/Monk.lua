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
lib:__RegisterSpells("MONK", 70000, 1, {
	COOLDOWN = {
		 109132, -- Roll
		 119582, -- Purifying Brew
		 119996, -- Transcendance: Transfer
		[115176] = "SURVIVAL", -- Zen Meditation
		[116705] = "INTERRUPT", -- Spear Hand Strike
		[218164] = "HELPFUL DISPEL", -- Detox (BM and WW)
		AURA = {
			HARMFUL = {
				 116189, -- Provoke (taunt)
				 117952, -- Crackling Jade Lightning
				 121253, -- Keg Smash (slow)
				 123725, -- Breath of Fire
				[115078] = "CROWD_CTL", -- Paralysis (Incapacitate)
			},
			PERSONAL = {
				101643, -- Transcendance
				SURVIVAL = {
					120954, -- Fortifying Brew
					215479, -- Ironskin Brew
				},
			},
		},
	},
}, {
	-- map aura to provider(s)
	[116189] = 115546, -- Provoke (taunt)
	[120954] = 115203, -- Fortifying Brew
	[123725] = 115181, -- Breath of Fire
	[215479] = 115308, -- Ironskin Brew
})
