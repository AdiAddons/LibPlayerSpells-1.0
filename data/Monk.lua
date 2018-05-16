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
lib:__RegisterSpells('MONK', 8000, 1, {
	COOLDOWN = {
		 109132, -- Roll
		 116892, -- Zen Pilgrimage
		 119582, -- Purifying Brew (Brewmaster)
		 119996, -- Transcendence: Transfer (Brewmaster)
		[116705] = 'INTERRUPT', -- Spear Hand Strike (Brewmaster)
		AURA = {
			HARMFUL = {
				123725, -- Breath of Fire (Brewmaster)
				CROWD_CTRL = {
					[115078] = 'INCAPACITATE', -- Paralysis
					[119381] = 'STUN', -- Leg Sweep (Brewmaster)
					TAUNT = {
						116189, -- Provoke (Brewmaster)
					},
				},
				SNARE = {
					121253, -- Keg Smash (Brewmaster)
				},
			},
			HELPFUL = {},
			PERSONAL = {
				101643, -- Transcendence (Brewmaster)
				215479, -- Ironskin Brew (Brewmaster)
				SURVIVAL = {
					115176, -- Zen Meditation (Brewmaster)
					120954, -- Fortifying Brew (Brewmaster)
				},
			},
		},
	},
	AURA = {
		HARMFUL = {},
		HELPFUL = {},
		PERSONAL = {
			195630, -- Elusive Brawler (Brewmaster)
		},
	},
}, {
	-- map aura to provider(s)
	[116189] = 115546, -- Provoke (Brewmaster)
	[123725] = 115181, -- Breath of Fire (Brewmaster)
	[120954] = 115203, -- Fortifying Brew (Brewmaster)
	[195630] = 117906, -- Elusive Brawler (Brewmaster) <- Mastery: Elusive Brawler
	[215479] = 115308, -- Ironskin Brew (Brewmaster
}, {
	-- map aura to modified spell(s)
	[195630] = 205523, -- Elusive Brawler (Brewmaster) -> Blackout Strike
})
