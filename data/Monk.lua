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
		 115098, -- Chi Wave (Brewmaster talent)
		 115399, -- Black Ox Brew (Brewmaster talent)
		 116844, -- Ring of Peace (Brewmaster talent)
		 116892, -- Zen Pilgrimage
		 119582, -- Purifying Brew (Brewmaster)
		 119996, -- Transcendence: Transfer (Brewmaster)
		 122281, -- Healing Elixir (Brewmaster talent)
		 123986, -- Chi Burst (Brewmaster talent)
		[116705] = 'INTERRUPT', -- Spear Hand Strike (Brewmaster)
		AURA = {
			HARMFUL = {
				123725, -- Breath of Fire (Brewmaster)
				CROWD_CTRL = {
					[115078] = 'INCAPACITATE', -- Paralysis
					[119381] = 'STUN', -- Leg Sweep (Brewmaster)
					TAUNT = {
						116189, -- Provoke (Brewmaster)
						118635, -- Provoke (Brewmaster talent)
						196727, -- Provoke (Brewmaster talent)
					},
				},
				SNARE = {
					121253, -- Keg Smash (Brewmaster)
				},
			},
			HELPFUL = {
				116841, -- Tiger's Lust (Brewmaster talent)
			},
			PERSONAL = {
				101643, -- Transcendence (Brewmaster)
				116847, -- Rushing Jade Wind (Brewmaster talent)
				119085, -- Chi Torpedo (Brewmaster talent)
				196739, -- Elusive Dance (Brewmaster talent)
				215479, -- Ironskin Brew (Brewmaster)
				SURVIVAL = {
					115176, -- Zen Meditation (Brewmaster)
					120954, -- Fortifying Brew (Brewmaster)
					122278, -- Dampen Harm (Brewmaster talent)
				},
			},
		},
	},
	AURA = {
		HARMFUL = {},
		HELPFUL = {},
		PERSONAL = {
			195630, -- Elusive Brawler (Brewmaster)
			196608, -- Eye of the Tiger (Brewmaster talent) -- NOTE: also HARMFUL with the same id (not supported)
			228563, -- Blackout Combo (Brewmaster talent)
		},
	},
}, {
	-- map aura to provider(s)
	[116189] = 115546, -- Provoke (Brewmaster)
	[118635] = 115315, -- Provoke (Brewmaster talent) <- Black Ox Statue
	[119085] = 115008, -- Chi Torpedo (Brewmaster talent)
	[123725] = 115181, -- Breath of Fire (Brewmaster)
	[120954] = 115203, -- Fortifying Brew (Brewmaster)
	[195630] = 117906, -- Elusive Brawler (Brewmaster) <- Mastery: Elusive Brawler
	[196608] = 196607, -- Eye of the Tiger (Brewmaster talent)
	[196727] = 132578, -- Provoke (Brewmaster talent) <- Invoke Niuzao, the Black Ox
	[196739] = 196738, -- Elusive Dance (Brewmaster talent)
	[215479] = 115308, -- Ironskin Brew (Brewmaster
	[228563] = 196736, -- Blackout Combo (Brewmaster talent)
}, {
	-- map aura to modified spell(s)
	[118635] = 115546, -- Provoke (Brewmaster talent)
	[195630] = 205523, -- Elusive Brawler (Brewmaster) -> Blackout Strike
	[196608] = 100780, -- Eye of the Tiger (Brewmaster talent) -> Tiger Palm
	[196727] = 196727, -- Provoke (Niuzao) (Brewmaster talent)
	[196739] = 119582, -- Elusive Dance (Brewmaster talent) -> Purifying Brew
	[228563] = { -- Blackout Combo (Brewmaster talent)
		100780, -- Tiger Palm
		115181, -- Breath of Fire
		115308, -- Ironskin Brew
		119582, -- Purifying Brew
		121253, -- Keg Smash
	},
})
