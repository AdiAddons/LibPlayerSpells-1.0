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
lib:__RegisterSpells("PRIEST", "50400", 7, {
	COOLDOWN = {
		 19236, -- Desperate Prayer
		 32375, -- Mass Dispel
		 47540, -- Penance
		 62618, -- Power Word: Barrier
		 64843, -- Divine Hymn
		 73325, -- Leap of Faith
		108921, -- Psyfiend
		108968, -- Void Shift
		126135, -- Lightwell
		142723, -- Void Shift (shadow)
		108968, -- Void Shift (discipline, holy)
		["HELPFUL DISPEL"] = {
			527, -- Purify
		},
		AURA = {
			PERSONAL = {
				89485, -- Inner Focus
				SURVIVAL = {
					  586, -- Fade
					20711, -- Spirit of Redemption
					47585, -- Dispersion
				},
				MANA_REGEN = {
					 34433, -- Shadowfiend
					123040, -- Mind Bender
					 64901, -- Hymn of Hope
				},
				BURST = {
					 10060, -- Power Infusion
					 15286, -- Vampiric Embrace
					109964, -- Spirit Shell
					 81700, -- Archangel
				},
			},
			HELPFUL = {
				   17, -- Power Word: Shield
				33076, -- Prayer of Mending
				SURVIVAL = {
					33206, -- Pain Suppression
					47788, -- Guardian Spirit
				},
				UNIQUE_AURA = {
					6346, -- Fear Ward
				},
			},
			HARMFUL = {
				  8122, -- Psychic Scream
				 14914, -- Holy Fire
				108920, -- Void Tendrils
				129250, -- Power Word: Solace
				[15487] = "INTERRUPT", -- Silence
			},
		},
	},
	AURA = {
		PERSONAL = {
			   588, -- Inner Fire
			 63735, -- Serendipity
			 73413, -- Inner Will
			 81661, -- Evangelism
			112833, -- Spectral Guise
			114255, -- Surge of Light
		},
		HELPFUL = {
			   139, -- Renew
			[ 1706] = "UNIQUE_AURA", -- Levitate
			[ 6788] = "INVERT_AURA", -- Weakened Soul
		},
		HARMFUL = {
			   589, -- Shadow Word: Pain
			  2944, -- Devouring Plague
			 34914, -- Vampiric Touch
		},
	},
	RAIDBUFF = {
		[21562] = 'STAMINA',   -- Power Word: Fortitude
		[49868] = 'SPL_HASTE', -- Mind Quickening (shadow)
	},
	["HARMFUL DISPEL"] = {
		528, -- Dispel Magic
	},
}, {
	-- Map aura to provider
	[  6788] =     17, -- Weakened Soul <= Power Word: Shield
	[ 63735] =  63733, -- Serendipity
	[ 81661] =  81662, -- Evangelism
	[114255] = 109186, -- Surge of Light <= From Darkness, Comes Light
}, {
	-- Map aura to modified spell(s)
	[ 63735] = { -- Serendipity =>
		 596, -- Prayer of Healing
		2060, -- Greater Heal
	},
	[ 81661] =  81700, -- Evangelism => Archangel
	[114255] =  2061, -- Surge of Light => Flash Heal
})
