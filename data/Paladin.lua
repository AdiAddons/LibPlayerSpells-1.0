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
lib:__RegisterSpells("PALADIN", "50400", 6, {
	[4987] = 'DISPEL HELPFUL', -- Cleanse
	INTERRUPT = {
		96231, -- Rebuke
		31935, -- Avenger's Shield
	},
	['COOLDOWN AURA'] = {
		SURVIVAL = {
			PERSONAL = {
				   498, -- Divine Protection
				   642, -- Divine Shield
				 31850, -- Ardent Defender
				 54428, -- Divine Plea
				 86659, -- Ancient Guardian (prot)
				113075, -- Symbiosis: Barkskin
			},
			HELPFUL = {
				   633, -- Lay on Hands
				 31821, -- Devotion Aura
				  1022, -- Hand of Protection
				  6940, -- Hand of Sacrifice
				114039, -- Hand of Purity
			},
		},
		BURST = {
			PERSONAL = {
				86698, -- Guardian of Ancient Kings
				31884, -- Avenging Wrath
			},
			114165, -- Holy Prism
			114158, -- Light's Hammer
		},
		HARMFUL = {
			   853, -- Hammer of Justice
			105593, -- Fist of Justice
			114916, -- Execution Sentence
		},
	},
	AURA = {
		PERSONAL = {
			 84963, -- Inquisition
			 86700, -- Ancient Power
			 31868, -- Supplication
			114250, -- Selfless Healer
		},
		HELPFUL = {
			  1044, -- Hand of Freedom
			 20925, -- Sacred Shield
			 53563, -- Beacon of Light
			114163, -- Eternal Flame
		},
		HARMFUL = {
			 31801, -- Censure
			115798, -- Weakened Blows
		},
	},
	RAIDBUFF = {
		[20217] = 'STATS',   -- Blessing of Kings
		[19740] = 'MASTERY', -- Blessing of Might
	},
}, {
	-- Map aura to provider
	[115798] = { -- Weakened Blows <=
		35395, -- Crusader Strike
		53595, -- Hammer of Righteousness
	},
	[114250] = 20271, -- Selfless Healer <= Judgement
	[ 86700] = 86698, -- Ancient Power <= Guardian of Ancient Kings
}, {
	-- Map aura to modified spell(s)
	[114250] = 19750, -- Selfless Healer => Flash of Light
	[ 31868] = 19750, -- Supplication => Flash of Light
})
