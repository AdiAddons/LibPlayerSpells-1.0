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
lib:__RegisterSpells("PALADIN", 70000, 1, {
	COOLDOWN = {
		  35395, -- Crusader Strike
		 184575, -- Blade of Justice
		[ 96231] = "INTERRUPT", -- Rebuke
		DISPEL = {
			HELPFUL = {
				213644, -- Cleanse Toxins
			},
		},
		AURA = {
			HELPFUL = {
				  1044, -- Blessing of Freedom
				[25771] = "INVERT_AURA", -- Forbearance
				SURVIVAL = {
					1022, -- Blessing of Protection
				},
			},
			HARMFUL = {
				 62124, -- Hand of Reckoning (taunt)
				183218, -- Hand of Hindrance (slow)
				197277, -- Judgement
				CROWD_CTL = {
					853, -- Hammer of Justice (stun)
				}
			},
			PERSONAL = {
				BURST = {
					31884, -- Avenging Wrath
				},
				SURVIVAL = {
					   642, -- Divine Shield
					184662, -- Shield of Vengeance
				},
			},
		},
	},
	AURA = {
		HELPFUL = {
			203528, -- Greater Blessing of Might
			203538, -- Greater Blessing of Kings
			203539, -- Greater Blessing of Might
		},
	},
}, {
	-- map aura to provider(s)
	[ 25771] = { -- Forbearance
		 633, -- Lay on Hands
		 642, -- Devine Shield
		1022, -- Blessing of Protection
	},
	[197277] = 20271, -- Judgement
}, {
	-- map aura to modified spell(s)
})
