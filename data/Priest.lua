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
lib:__RegisterSpells("PRIEST", "50400", 3, {
	COOLDOWN = {
		   527, -- Purify
		 19236, -- Desperate Prayer
		 32375, -- Mass Dispel
		 62618, -- Power Word: Barrier
		 64843, -- Divine Hymn
		 73325, -- Leap of Faith
		108921, -- Psyfiend
		108968, -- Void Shift
		126135, -- Lightwell
		142723, -- Void Shift (shadow)
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
					64901, -- Hymn of Hope
				},
				BURST = {
					 10060, -- Power Infusion
					 15286, -- Vampiric Embrace
					109964, -- Spirit Shell
				},
			},
			HELPFUL = {
				33076, -- Prayer of Mending
				SURVIVAL = {
					33206, -- Pain Suppression
					47788, -- Guardian Spirit
				},
			},
			HARMFUL = {
				8122, -- Psychic Scream
				108920, -- Void Tendrils
			},
		},
	},
	RAIDBUFF = {
		[21562] = 'STAMINA',   -- Power Word: Fortitude
		[49868] = 'SPL_HASTE', -- Mind Quickening (shadow)
	},
}, {
	-- Map aura to provider
}, {
	-- Map aura to modified spell(s)
})
