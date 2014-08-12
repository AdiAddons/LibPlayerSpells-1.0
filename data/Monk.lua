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
				120086, -- Fists of Fury -- XXX: added through DRData (stuns)
				123586, -- Flying Serpent Kick -- TODO: add to snares in Common in ABA
				-- 130320, -- Rising Sun Kick -- FIXME: ABA freezes the client on aura refresh
			},
			PERSONAL = {
				SURVIVAL = {
					115308, -- Elusive Brew
					120954, -- Fortifying Brew
					115295, -- Guard
					137562, -- Nimble Brew
					115176, -- Zen Meditation -- FIXME: buff currently unvisible. move to cooldowns if not resolved by blizz
					125174, -- Touch of Karma
				},
				[115288] = "POWER_REGEN", -- Energizing Brew
			},
		},
	},
	AURA = {
		HARMFUL = {
			-- 123725, -- Breath of Fire -- FIXME: ABA freezes the client on aura refresh
			-- 117952, -- Crackling Jade Lightning -- FIXME: ABA freezes the client on aura refresh
			-- 116330, -- Dizzying Haze -- FIXME: ABA freezes the client on aura refresh
			-- 128531, -- Blackout Kick (Stance of the Fierce Tiger) -- FIXME: ABA freezes the client on aura refresh
			-- 116095, -- Disable (Slow) -- TODO: add to snares in Common in ABA -- FIXME: ABA freezes the client on aura refresh
			-- 116706, -- Disable (Root) -- XXX: added through DRData
			121125, -- Death Note
		},
		HELPFUL = {

		},
		PERSONAL = {
			-- 115307, -- Shuffle -- FIXME: ABA freezes the client on aura refresh
			101546, -- Spinning Crane Kick
			-- 125359, -- Tiger Power -- FIXME: ABA freezes the client on aura refresh
			-- 118864, -- Combo Breaker: Tiger Palm -- XXX: covered by the default ui
			-- 116768, -- Combo Breaker: Blackout Kick -- XXX: covered by the default ui
			137639, -- Storm, Earth and Fire
			-- 116740, -- Tigereye Brew -- FIXME: ABA freezes the client on aura refresh
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
	-- [125359] = 103985, -- Tiger Power <-- Stance of the Fierce Tiger -- FIXME: ABA freezes the client on aura refresh
	-- [128531] = 103985, -- Blackout Kick <-- Stance of the Fierce Tiger -- FIXME: ABA freezes the client on aura refresh
	-- [116706] = 116095, -- Disable (Root) -- XXX: added through DRData (roots)
	-- [118864] = 103985, -- Combo Breaker: Tiger Palm <-- Stance of the Fierce Tiger -- XXX: covered by the default ui
	-- [116768] = 103985, -- Combo Breaker: Blackout Kick <-- Stance of the Fierce Tiger -- XXX: covered by the default ui
	[120086] = 113656, -- Fists of Fury -- XXX: added through DRData (stuns)
	[123586] = 101545, -- Flying Serpent Kick
	-- [130320] = 107428, -- Rising Sun Kick -- FIXME: ABA freezes the client on aura refresh
	[121125] = 115080, -- Death Note <-- Touch of Death
	[125174] = 122470, -- Touch of Karma
}, {
	-- Map aura to modified spell(s)
	-- [115307] = 100784, -- Shuffle --> Blackout Kick -- FIXME: ABA freezes the client on aura refresh
	-- [125359] = 100787, -- Tiger Power --> Tiger Palm -- FIXME: ABA freezes the client on aura refresh
	-- [128531] = 100784, -- Blackout Kick (Stance of the Fierce Tiger) -- FIXME: ABA freezes the client on aura refresh
	-- [118864] = 100787, -- Combo Breaker: Tiger Palm --> Tiger Palm -- XXX: covered by the default ui
	-- [116768] = 100784, -- Combo Breaker: Blackout Kick --> Blackout Kick -- XXX: covered by the default ui
})
