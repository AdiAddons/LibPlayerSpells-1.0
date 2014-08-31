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
lib:__RegisterSpells("MONK", "50400", 10, {
	COOLDOWN = {
		109132, -- Roll
		113656, -- Fists of Fury
		115008, -- Chi Torpedo
		115072, -- Expel Harm
		115151, -- Renewing Mist
		115310, -- Revival
		115313, -- Summon Jade Serpent Statue
		115315, -- Summon Black Ox Statue
		115399, -- Chi Brew
		116680, -- Thunder Focus Tea
		116847, -- Rushing Jade Wind
		119381, -- Leg Sweep
		119392, -- Charging Ox Wave
		121253, -- Keg Smash
		121827, -- Roll modified by Celerity
		123761, -- Mana Tea (glyphed)
		123904, -- Invoke Xuen, the White Tiger
		[115098] = "HARMFUL HELPFUL" , -- Chi Wave
		AURA = {
			[116705] = "HARMFUL INTERRUPT", -- Spear Hand Strike
			HELPFUL = {
				 124081, -- Zen Sphere
				[116844] = "SURVIVAL", -- Ring of Peace
				[116849] = "SURVIVAL", -- Life Cocoon
				[115213] = "SURVIVAL", -- Avert Harm
				[131523] = "SURVIVAL", -- Zen Meditation
			},
			PERSONAL = {
				[115288] = "POWER_REGEN", -- Energizing Brew
				SURVIVAL = {
					115295, -- Guard
					115203, -- Fortifying Brew
					122278, -- Dampen Harm
					122470, -- Touch of Karma
					122783, -- Diffuse Magic
					137562, -- Nimble Brew
				},
			},
		},
	},
	AURA = {
		PERSONAL = {
			115307, -- Shuffle
			115867, -- Mana Tea (stacking buff)
			118674, -- Vital Mists (stacking buff)
			124458, -- Healing Sphere (buff)
			125195, -- Tigereye Brew (stacking buff)
			125359, -- Tiger Power
			127722, -- Serpent's Zeal
			128939, -- Elusive Brew (stacking buff)
			129914, -- Power Strikes (buff)
			134563, -- Healing Elixirs (buff)
			137639, -- Storm, Earth, and Fire
			[115294] = "MANA_REGEN", -- Mana Tea
			[115308] = "SURVIVAL", -- Elusive Brew
			[116740] = "BURST", -- Tigereye Brew
		},
		HARMFUL = {
			107428, -- Rising Sun Kick
			130320, -- Rising Sun Kick (debuff)
			116330, -- Dizzying Haze (debuff)
			116095, -- Disable
			123725, -- Breath of Fire (debuff)
			123727, -- Dizzying Haze (debuff)
		},
		HELPFUL = {
			119611, -- Renewing Mist (buff)
			132120, -- Enveloping Mist (buff)
		},
	},
	RAIDBUFF = {
		[115921] = "STATS",    -- Legacy of the Emperor
		[117666] = "STATS",    -- Legacy of the Emperor
		[116781] = "CRITICAL", -- Legacy of the White Tiger
	},
	DISPEL = {
		[115450] = "HELPFUL COOLDOWN", -- Detox
	},
}, {
	-- Map aura to provider
	[115307] = 117967, -- Shuffle <- Brewmaster Training
	[115867] = 123766, -- Mana Tea <- Brewing: Mana Tea
	[117666] = 115921, -- Legacy of the Emperor
	[118674] = 116645, -- Vital Mists <- Teachings of the Monastery
	[119611] = 115151, -- Renewing Mist
	[123725] = 115181, -- Breath of Fire
	[125195] = 123980, -- Tigereye Brew <- Brewing: Tigereye Brew
	[125359] = 100787, -- Tiger Power <- Tiger Palm
	[127722] = 116645, -- Serpent's Zeal <- Teachings of the Monastery
	[128939] = 128938, -- Elusive Brew <- Brewing: Elusive Brew
	[129914] = 121817, -- Power Strikes
	[132120] = 124682, -- Enveloping Mist
	[116330] = 115180, -- Dizzying Haze (debuff)  <- Dizzying Haze
	[123727] = 121253, -- Dizzying Haze (debuff) <- Keg Smash
	[124458] = 115460, -- Healing Sphere
	[130320] = 107428, -- Rising Sun Kick
	[131523] = 115176, -- Zen Meditation
}, {
	-- Map aura to modified spell(s)
	[115307] = 100784, -- Shuffle -> Blackout Kick
	[115867] = 115294, -- Mana Tea
	[118674] = 123273, -- Vital Mists -> Surging Mist
	[125195] = 116740, -- Tigereye Brew
	[127722] = 100784, -- Serpent's Zeal -> Blackout Kick
	[128939] = 115308, -- Elusive Brew
	[116330] = { 115180, 121253 }, -- Dizzying Haze (debuff) -> Dizzying Haze & Keg Smash
	[123727] = { 115180, 121253 }, -- Dizzying Haze (debuff) -> Dizzying Haze & Keg Smash
	[129914] = { -- Power Strikes ->
		100780, -- Jab (glyphed)
		101546, -- Spinning Crane Kick
		115072, -- Expel Harm
		115175, -- Soothing Mist
		115693, -- Jab
		117952, -- Crackling Jade Lightning
		116847, -- Rushing Jade Wind
	},
	[134563] = { -- Healing Elixirs ->
		115203, -- Fortifying Brew
		115288, -- Energizing Brew
		115294, -- Mana Tea
		115308, -- Elusive Brew
		115399, -- Chi Brew
		116680, -- Thunder Focus Tea
		116740, -- Tigereye Brew
		119582, -- Purifying Brew
		137562, -- Nimble Brew
	},
})
