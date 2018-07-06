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
along with LibPlayerSpells-1.0. If not, see <http://www.gnu.org/licenses/>.
--]]

local lib = LibStub('LibPlayerSpells-1.0')
if not lib then return end
lib:__RegisterSpells('PRIEST', 80000, 1, {
	COOLDOWN = {
		 2050, -- Holy Word: Serenity (Holy)
		34861, -- Holy Word: Sanctify (Holy)
		73325, -- Leap of Faith
		AURA = {
			HARMFUL = {
				14914, -- Holy Fire (Holy)
				CROWD_CTRL = {
					[  8122] = 'DISORIENT', -- Psychic Scream
					[200196] = 'INCAPACITATE', -- Holy Word: Chastise
				},
			},
			HELPFUL = {
				 41635, -- Prayer of Mending (Holy)
				 64844, -- Divine Hymn (Holy)
				[64901] = 'POWER_REGEN', -- Symbol of Hope (Holy)
				SURVIVAL = {
					47788, -- Guardian Spirit (Holy)
				},
			},
			PERSONAL = {
				  586, -- Fade
				64843, -- Divine Hymn (Holy)
				SURVIVAL = {
					19236, -- Desperate Prayer (Discipline/Holy)
				}
			},
		},
	},
	AURA = {
		HARMFUL = {
			CROWD_CTRL = {
				[ 605] = 'DISORIENT', -- Mind Control
				[9484] = 'INCAPACITATE', -- Shackle Undead
			},
		},
		HELPFUL = {
			   139, -- Renew (Holy)
			111759, -- Levitate
		},
		PERSONAL = {
			2096, -- Mind Vision
		},
	},
	DISPEL = {
		[528] = 'HARMFUL MAGIC', -- Dispel Magic
		HELPFUL = {
			COOLDOWN = {
				[  527] = 'DISEASE MAGIC', -- Purify (Discipline/Holy)
				[32375] = 'HARMFUL MAGIC', -- Mass Dispel
			},
		},
	},
}, { -- map aura to provider(s)
	[ 41635] = 33076, -- Prayer of Mending (Holy)
	[ 64844] = 64843, -- Divine Hymn (Holy)
	[111759] =  1706, -- Levitate
	[200196] = 88625, -- Holy Word: Chastise
}, { -- map aura(s) to modified spell(s)
})
