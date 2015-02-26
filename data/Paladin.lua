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
lib:__RegisterSpells("PALADIN", "60100", 3, {
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
				 86659, -- Ancient Guardian (prot)
				105809, -- Holy Avenger
				132403, -- Shield of the Righteous (prot)
			},
			HELPFUL = {
				   633, -- Lay on Hands
				  1022, -- Hand of Protection
				  1038, -- Hands of Salvation
				  6940, -- Hand of Sacrifice
				 31821, -- Devotion Aura
				114039, -- Hand of Purity
			},
		},
		BURST = {
			PERSONAL = {
				31884, -- Avenging Wrath
			},
			114158, -- Light's Hammer
			114165, -- Holy Prism
		},
		HARMFUL = {
			   853, -- Hammer of Justice
			105593, -- Fist of Justice
			114916, -- Execution Sentence
		},
	},
	AURA = {
		PERSONAL = {
			 25780, -- Righteous Fury
			 31868, -- Supplication
			 85499, -- Speed of Light
			114250, -- Selfless Healer
			156987, -- Turalyon's Justice (Empowered Seal talent)
			156988, -- Uther's Insight (Empowered Seal talent)
			156989, -- Liadrin's Righteousness (Empowered Seal talent)
			156990, -- Maraad's Truth (Empowered Seal talent)
		},
		HELPFUL = {
			  1044, -- Hand of Freedom
			 20925, -- Sacred Shield
			 53563, -- Beacon of Light
			114163, -- Eternal Flame
			114917, -- Execution Sentence (heal)
			156910, -- Beacon of Faith
		},
		HARMFUL = {
			 31803, -- Censure
			 81298, -- Consecration
			114916, -- Execution Sentence (damage)
			114919, -- Light's Hamer (damage)
		},
	},
	RAIDBUFF = {
		[ 19740] = 'MASTERY',    -- Blessing of Might
		[ 20217] = 'STATS',      -- Blessing of Kings
		[167187] = "VERSATILITY" -- Sanctity Aura
	},
}, {
	-- Map aura to provider
	[ 31803] =  31801, -- Censure <= Seal of Truth
	[ 81298] =  26573, -- Consecration (prot)
	[114250] =  20271, -- Selfless Healer <= Judgement
	[114916] = 114157,-- Execution Sentence (damage)
	[114917] = 114157,-- Execution Sentence (heal)
	[114919] = 114158,-- Light's Hammer (damage)
	[132403] =  53600, -- Shield of the Righteous (prot)
	[156987] = 152263, -- Turalyon's Justice <= Empowered Seal talent
	[156988] = 152263, -- Uther's Insight <= Empowered Seal talent
	[156989] = 152263, -- Liadrin's Righteousness <= Empowered Seal talent
	[156990] = 152263, -- Maraad's Truth <= Empowered Seals talent
}, {
	-- Map aura to modified spell(s)
	[ 31868] = 19750, -- Supplication => Flash of Light
	[114250] = 19750, -- Selfless Healer => Flash of Light
	[156987] = 20164, -- Turalyon's Justice => Seal of Justice
	[156988] = 20165, -- Uther's Insight => Seal of Insight
	[156989] = 20154, -- Liadrin's Righteousness => Seal of Righteousness
	[156990] = 31801, -- Maraad's Truth => Seal of Truth
})
