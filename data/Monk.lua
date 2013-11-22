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
lib:__RegisterSpells("MONK", "50400", 1, {
	["COOLDOWN"] = {
		109132, -- Roll
		113656, -- Fists of Fury
		115072, -- Expel Harm
		115151, -- Renewing Mist
		115310, -- Revival
		115313, -- Summon Jade Serpent Statue
		115315, -- Summon Black Ox Statue
		115450, -- Detox
		115451, -- Internal Medicine
		116680, -- Thunder Focus Tea
		116705, -- Spear Hand Strike
		121253, -- Keg Smash
		121827, -- Roll modified by Celerity
	},
	["PERSONAL SURVIVAL COOLDOWN AURA"] = {
		115295, -- Guard
		115176, -- Zen Meditation
		115203, -- Fortifying Brew
		115213, -- Avert Harm
		116844, -- Ring of Peace
		122278, -- Dampen Harm
		122470, -- Touch of Karma
		122783, -- Diffuse Magic
		137562, -- Nimble Brew
	},
	["PERSONAL AURA"] = {
		115307, -- Shuffle
		115867, -- Mana Tea (stacking buff)
		118674, -- Vital Mists (stacking buff)
		125195, -- Tigereye Brew (stacking buff)
		125359, -- Tiger Power
		127722, -- Serpent's Zeal
		128939, -- Elusive Brew (stacking buff)
		129914, -- Power Strikes (buff)
		134563, -- Healing Elixirs (buff)
	},
	["HARMFUL AURA"] = {
		107428, -- Rising Sun Kick
		115180, -- Dizzying Haze
		116095, -- Disable
		123725, -- Breath of Fire (debuff)
	},
	RAIDBUFF = {
		[115921] = "STATS",    -- Legacy of the Emperor
		[116781] = "CRITICAL", -- Legacy of the White Tiger
	},
	-- Special cases
	[115098] = "HARMFUL HELPFUL COOLDOWN", -- Chi Wave
	[115288] = "PERSONAL POWER_REGEN COOLDOWN AURA", -- Energizing Brew
	[115294] = "PERSONAL MANA_REGEN AURA", -- Mana Tea
	[115308] = "PERSONAL SURVIVAL AURA", -- Elusive Brew
	[116740] = "PERSONAL BURST AURA", -- Tigereye Brew
	[116849] = "HELPFUL SURVIVAL COOLDOWN AURA", -- Life Cocoon
	[119611] = "HELPFUL AURA" , -- Renewing Mist (buff)
	[132120] = "HELPFUL AURA", -- Enveloping Mist (buff)
}, {
	-- Map aura to provider
	[115307] = 117967, -- Shuffle <- Brewmaster Training
	[115867] = 123766, -- Mana Tea <- Brewing: Mana Tea
	[118674] = 116645, -- Vital Mists <- Teachings of the Monastery
	[119611] = 115151, -- Renewing Mist
	[123725] = 115181, -- Breath of Fire
	[125195] = 123980, -- Tigereye Brew <- Brewing: Tigereye Brew
	[125359] = 100787, -- Tiger Power <- Tiger Palm
	[127722] = 116645, -- Serpent's Zeal <- Teachings of the Monastery
	[128939] = 128938, -- Elusive Brew <- Brewing: Elusive Brew
	[129914] = 121817, -- Power Strikes
	[132120] = 124682, -- Enveloping Mist
}, {
	-- Map aura to modified spell(s)
	[115307] = 100784, -- Shuffle -> Blackout Kick
	[115867] = 115294, -- Mana Tea
	[118674] = 123273, -- Vital Mists -> Surging Mist
	[125195] = 116740, -- Tigereye Brew
	[127722] = 100784, -- Serpent's Zeal -> Blackout Kick
	[128939] = 115308, -- Elusive Brew
	[129914] = { -- Power Strikes ->
		100780, -- Jab (glyphed)
		101546, -- Spinning Crane Kick
		115072, -- Expel Harm
		115175, -- Soothing Mist
		115693, -- Jab
		117952, -- Crackling Jade Lightning
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
