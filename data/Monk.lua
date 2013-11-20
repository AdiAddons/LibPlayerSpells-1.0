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
		100784, -- Guard
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
	-- Special cases
	[115098] = "HARMFUL HELPFUL COOLDOWN", -- Chi Wave
	[115288] = "PERSONAL BURST COOLDOWN AURA", -- Energizing Brew
	[115308] = "PERSONAL SURVIVAL AURA", -- Elusive Brew
	[116740] = "PERSONAL BURST AURA", -- Tigereye Brew
	[116849] = "HELPFUL SURVIVAL COOLDOWN AURA", -- Life Cocoon
	[119611] = "HELPFUL AURA" , -- Renewing Mist (buff)
	[132120] = "HELPFUL AURA", -- Enveloping Mist (buff)
})
