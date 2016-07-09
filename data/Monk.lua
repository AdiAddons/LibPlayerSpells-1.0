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
				 123725, -- Breath of Fire -- TODO: check without artifact
				 213063, -- Dark Side of the Moon (BM artifact)
				 214326, -- Exploding Keg (BM artifact)
				[115078] = "CROWD_CTL", -- Paralysis (Incapacitate)
			},
			PERSONAL = {
				101643, -- Transcendance
				213177, -- Swift as a Coursing River (BM artifact)
				SURVIVAL = {
					120954, -- Fortifying Brew
					213341, -- Fortification (BM artifact)
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
	[213063] = 227689, -- Dark Side of the Moon (BM artifact)
	[213341] = 213340, -- Fortification (BM artifact)
	[213177] = 213161, -- Swift as a Coursing River (BM artifact)
	[215479] = 115308, -- Ironskin Brew
}, {
	-- map aura to modified spell(s)
	[213063] = 205523, -- Dark Side of the Moon (BM artifact) -> Blackout Strike
	[213177] = { -- Swift as a Coursing River (BM artifact)
		115203, -- Fortifying Brew
		119582, -- Purifying Brew
		215308, -- Ironskin Brew
	},
	[213341] = 115203, -- Fortification (BM artifact) -> Fortifying Brew
})
