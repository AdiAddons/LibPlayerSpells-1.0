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
lib:__RegisterSpells("PALADIN", 70000, 2, {
	COOLDOWN = {
		[ 96231] = "INTERRUPT", -- Rebuke
		AURA = {
			HARMFUL = {
				197277, -- Judgement (Retribution)
				213757, -- Execution Sentence (Retribution Talent)
				204242, -- Consecration (Retribution Talent)
				CROWD_CTL = {
					   853, -- Hammer of Justice (stun) (Retribution)
					183218, -- Hand of Hundrance (slow) (Retribution)
					 20066, -- Repentance (incapacitate) (Retribution Talent)
					105421, -- Blinding Light (disorient) (Retribution Talent)
				},
			},
			HELPFUL = {
			},
			PERSONAL = {
				 31884, -- Avenging Wrath (Retribution)
				221887, -- Divine Steed (Retribution Talent)
				205191, -- Eye for an Eye (Retribution Talent)
				224668, -- Crusade (Retribution Talent)
				SURVIVAL = {
					   642, -- Divine Shield
					184662, -- Shielf of Vengeance (Retribution)
				},
			},
		},
	},
	AURA = {
		HELPFUL = {
			  1022, -- Blessing of Protection
			  1044, -- Blessing of Freedom
			203539, -- Greater Blessing of Wisdom (Retribution)
			203528, -- Greater Blessing of Might (Retribution)
			203538, -- Greater Blessing of Kings (Retribution)
		},
		HARMFUL = {
			202270, -- Blade of Wrath (Retribution Talent)
		},
		PERSONAL = {
			223819, -- Divine Purspose (Retribution Talent)
			209785, -- The Fires of Justice (Retribution Talent)
			202273, -- Seal of Light (Retribution Talent)
			217020, -- Zeal (Retribution Talent)
		},
	},
}, {
	-- map aura to provider(s)
	[197277] = 20271, -- Judgement
	[204242] = 205228, -- Consecration
	[221887] = 205656, -- Divine Steed
	[105421] = 115750, -- Blinding Light
	[209785] = 35395, -- The Fires of Justice
	[223819] = { -- Divine Purspose
		 85256, -- Templar's Verdict
		 53385, -- Divine Storm
		215661, -- Justicar's Vengeance
		213757, -- Execution Sentence
		210191, -- Word of Glory
	},
}, {
	-- map aura to modified spell(s)
	[223819] = { -- Divine Purspose
		 85256, -- Templar's Verdict
		 53385, -- Divine Storm
		215661, -- Justicar's Vengeance
		213757, -- Execution Sentence
		210191, -- Word of Glory
	},
	[209785] = { -- The Fires of Justice
		 85256, -- Templar's Verdict
		 53385, -- Divine Storm
		215661, -- Justicar's Vengeance
		213757, -- Execution Sentence
		210191, -- Word of Glory
	},
})
