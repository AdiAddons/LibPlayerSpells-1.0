--[[
LibPlayerSpells-1.0 - Additional information about player spells.
(c) 2013 Adirelle (adirelle@gmail.com)

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
lib:__RegisterSpells("MONK", "60000", 1, {
	COOLDOWN = {
		 115072, -- Expel Harm
		 109132, -- Roll
		[116705] = "HARMFUL INTERRUPT",
		 115315, -- Summon Black Ox Statue
		 115080, -- Touch of Death
		 101643, -- Transcendence
		 119996, -- Transcendence: Transfer
		AURA = {
			HARMFUL = {
				-- 121253, -- Keg Smash -- XXX: seems to be the same as dizzying haze -- FIXME: ABA freezes the client on aura refresh
				118585, -- Leer of the Ox
				115078, -- Paralysis
			},
			PERSONAL = {
				SURVIVAL = {
					115308, -- Elusive Brew
					120954, -- Fortifying Brew
					115295, -- Guard
					137562, -- Nimble Brew
					115176, -- Zen Meditation -- FIXME: buff currently unvisible. move to cooldowns if not resolved by blizz
				},
			},
		},
	},
	AURA = {
		HARMFUL = {
			-- 123725, -- Breath of Fire -- FIXME: ABA freezes the client on aura refresh
			-- 117952, -- Crackling Jade Lightning -- FIXME: ABA freezes the client on aura refresh
			-- 116330, -- Dizzying Haze -- FIXME: ABA freezes the client on aura refresh
		},
		HELPFUL = {

		},
		PERSONAL = {
			-- 115307, -- Shuffle -- FIXME: ABA freezes the client on aura refresh
			101546, -- Spinning Crane Kick
			-- 125359, -- Tiger Power -- FIXME: ABA freezes the client on aura refresh
		},
	},
	RAIDBUFF = {
		[115921] = "STATS",          -- Legacy of the Emperor
		[116781] = "STATS CRITICAL", -- Legacy of the White Tiger
		[166916] = "MULTISTRIKE",    -- Windflurry
	},
	DISPEL = {
		[115450] = "HELPFUL COOLDOWN", -- Detox
	},
}, {
	-- Map aura to provider
	-- [115307] = 115069, -- Shuffle <-- Stance of the Sturdy Ox -- FIXME: ABA freezes the client on aura refresh
	-- [123725] = 115181, -- Breath of Fire -- FIXME: ABA freezes the client on aura refresh
	-- [116330] = 115180, -- Dizzying Haze -- FIXME: ABA freezes the client on aura refresh
	[120954] = 115203, -- Fortifying Brew
	[118585] = 115543, -- Leer of the Ox
	-- [125359] = 115069, -- Tiger Power <-- Stance of the Sturdy Ox -- FIXME: ABA freezes the client on aura refresh
}, {
	-- Map aura to modified spell(s)
	-- [115307] = 100784, -- Shuffle --> Blackout Kick -- FIXME: ABA freezes the client on aura refresh
	-- [125359] = 100787, -- Tiger Power --> Tiger Palm -- FIXME: ABA freezes the client on aura refresh
})
