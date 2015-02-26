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
lib:__RegisterSpells("MONK", "60100", 11, {
	COOLDOWN = {
		 109132, -- Roll
		 115072, -- Expel Harm
		 115080, -- Touch of Death
		 115315, -- Summon Black Ox Statue
		[116705] = "HARMFUL INTERRUPT",
		 119996, -- Transcendence: Transfer
		AURA = {
			HELPFUL = {
				[116849] = "SURVIVAL", -- Life Cocoon
				 119611, -- Renewing Mist
				 124081, -- Zen Sphere
			},
			HARMFUL = {
				115078, -- Paralysis
				118585, -- Leer of the Ox
				120086, -- Fists of Fury -- XXX: added through DRData (stuns)
				123586, -- Flying Serpent Kick -- TODO: add to snares in Common in ABA
				130320, -- Rising Sun Kick
			},
			PERSONAL = {
				 101643, -- Transcendence
				 116841, -- Tiger's Lust
				 116847, -- Rushing Jade Wind
				[115288] = "POWER_REGEN", -- Energizing Brew
				 123402, -- Guard with Glyph
				SURVIVAL = {
					115176, -- Zen Meditation -- FIXME: buff currently unvisible. move to cooldowns if not resolved by blizz
					115295, -- Guard
					115308, -- Elusive Brew
					120954, -- Fortifying Brew
					122278, -- Dampen Harm
					122783, -- Diffuse Magic
					125174, -- Touch of Karma
					137562, -- Nimble Brew
				},
			},
		},
	},
	AURA = {
		HARMFUL = {
			116095, -- Disable (Slow) -- TODO: add to snares in Common in ABA
			116330, -- Dizzying Haze
			117952, -- Crackling Jade Lightning
			121125, -- Death Note
			123725, -- Breath of Fire
			128531, -- Blackout Kick (Stance of the Fierce Tiger)
		},
		PERSONAL = {
			101546, -- Spinning Crane Kick
			115307, -- Shuffle
			116740, -- Tigereye Brew
			118674, -- Vital Mists
			119085, -- Momentum, should be seen on 109132, -- Roll
			125359, -- Tiger Power
			127722, -- Crane's Zeal
			137639, -- Storm, Earth and Fire
		},
		HELPFUL = {
			132120, -- Enveloping Mist
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
	[115307] = 115069, -- Shuffle <-- Stance of the Sturdy Ox
	[116330] = 115180, -- Dizzying Haze
	[118585] = 115543, -- Leer of the Ox
	[118674] = 139598, -- Vital Mists <-- Crane Style Techniques
	[119085] = 109132, -- Momentum --> Roll
	[119611] = 115151, -- Renewing Mist
	[120954] = 115203, -- Fortifying Brew
	[121125] = 115080, -- Death Note <-- Touch of Death
	[127722] = 154436, -- Crane's Zeal <-- Stance of the Spirited Crane
	[123725] = 115181, -- Breath of Fire
	[123586] = 101545, -- Flying Serpent Kick
	[125174] = 122470, -- Touch of Karma
	[125359] = {        -- Tiger Power
		103985, -- Stance of the Fierce Tiger
		115069, -- Stance of the Sturdy Ox
	},
	[128531] = 103985, -- Blackout Kick <-- Stance of the Fierce Tiger
	[130320] = 107428, -- Rising Sun Kick
	[132120] = 124682, -- Enveloping Mist
}, {
	-- Map aura to modified spell(s)
	[116330] = { 115180, 121253 }, -- Dizzying Haze --> Dizzying Haze & Keg Smash
	[115307] = { -- Shuffle -->
		100784, -- Blackout Kick (Stance of the Sturdy Ox)
		157676, -- Chi Explosion (Brewmaster)
	},
	[118674] = 123273, -- Vital Mists --> Surging Mist
	[125359] = 100787, -- Tiger Power --> Tiger Palm
	[127722] = 100784, -- Crane's Zeal --> Blackout Kick (Stance of the Spirited Crane)
	[128531] = 100784, -- Blackout Kick --> Blackout Kick (Stance of the Fierce Tiger)
})
