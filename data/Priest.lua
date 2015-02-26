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
lib:__RegisterSpells("PRIEST", "60100", 5, {
	COOLDOWN = {
		 19236, -- Desperate Prayer
		 32375, -- Mass Dispel
		 47540, -- Penance
		 62618, -- Power Word: Barrier
		 64843, -- Divine Hymn
		 73325, -- Leap of Faith
		126135, -- Lightwell
		DISPEL = {
			[527] = "HELPFUL", -- Purify
			[528] = "HARMFUL", -- Dispel Magic
		},
		AURA = {
			PERSONAL = {
				132573, -- Shadow Word: Insanity
				SURVIVAL = {
					   586, -- Fade
					 20711, -- Spirit of Redemption
					 47585, -- Dispersion
					119032, -- Spectral Guise
				},
				MANA_REGEN = {
					 34433, -- Shadowfiend
					123040, -- Mind Bender
				},
				BURST = {
					 10060, -- Power Infusion
					 15286, -- Vampiric Embrace
					 81700, -- Archangel
					109964, -- Spirit Shell
				},
			},
			HELPFUL = {
				   17, -- Power Word: Shield
				33076, -- Prayer of Mending
				81782, -- Power Word: Barrier
				SURVIVAL = {
					 33206, -- Pain Suppression
					 47788, -- Guardian Spirit
					121557, -- Angelic Feather
				},
				UNIQUE_AURA = {
					6346, -- Fear Ward
				},
			},
			HARMFUL = {
				   8122, -- Psychic Scream
				  14914, -- Holy Fire
				 114404, -- Void Tendrils
				 129250, -- Power Word: Solace
				[ 15487] = "INTERRUPT", -- Silence
			},
		},
	},
	AURA = {
		PERSONAL = {
			 63735, -- Serendipity
			 81661, -- Evangelism
			112833, -- Spectral Guise
			114255, -- Surge of Light
			 15473, -- Shadow Form
		},
		HELPFUL = {
			    139, -- Renew
			[  6788] = "INVERT_AURA", -- Weakened Soul
			[111759] = "UNIQUE_AURA", -- Levitate
		},
		HARMFUL = {
			   589, -- Shadow Word: Pain
			 15407, -- Mind Flay
			 34914, -- Vampiric Touch
			129197, -- Mind Flay (Insanity)
			155361, -- Void Entropy
			158831, -- Devouring Plague
		},
	},
	RAIDBUFF = {
		[21562] = 'STAMINA',           -- Power Word: Fortitude
		[49868] = 'HASTE MULTISTRIKE', -- Mind Quickening (shadow)
	},
}, {
	-- Map aura to provider
	[  6788] =     17, -- Weakened Soul <- Power Word: Shield
	[ 63735] =  63733, -- Serendipity
	[ 81661] =  81662, -- Evangelism
	[ 81782] =  62618, -- Power Word: Barrier
	[111759] =   1706, -- Levitate
	[114255] = 109186, -- Surge of Light <- From Darkness, Comes Light
	[114404] = 108920, -- Vod Tendrils
	[119032] = 112833, -- Spectral Guise (Talent)
	[121557] = 121536, -- Angelic Feather (Talent)
	[129197] =  15407, -- Mind Flay (Insanity)
	[158831] =   2944, -- Devouring Plague
}, {
	-- Map aura to modified spell(s)
	[132573] = 129197, -- Shadow Word: Insanity -> Insanity
})
