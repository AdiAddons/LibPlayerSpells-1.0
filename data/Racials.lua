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

local lib = LibStub("LibPlayerSpells-1.0", true)
if not lib then return end
lib:__RegisterSpells("RACIAL", 60100, 1, {
	COOLDOWN = {
		AURA = {
			PERSONAL = {
				26297, -- Berserking (Troll)
				20542, -- Blood Fury (Orc attack power)
				33702, -- Blood Fury (Orc spell power)
				33697, -- Blood Fury (Orc both)
				65116, -- Stoneform (Dwarf)
				58984, -- Shadowmeld (Night elf)
				68992, -- Darkflight (Worgen)
				20578, -- Cannibalize (Undead)
			},
			HELPFUL = {
				 59545, -- Gift of the Naaru (Draenei Death Knight)
				 59543, -- Gift of the Naaru (Draenei Hunter)
				 59548, -- Gift of the Naaru (Draenei Mage)
				 59542, -- Gift of the Naaru (Draenei Paladin)
				 59544, -- Gift of the Naaru (Draenei Priest)
				 59547, -- Gift of the Naaru (Draenei Shaman)
				 28880, -- Gift of the Naaru (Draenei Warrior)
				121093, -- Gift of the Naaru (Draenei Monk)
			},
			HARMFUL = {
				 28730, -- Arcane Torrent (Blood elf mana)
				 50613, -- Arcane Torrent (Blood elf runic power)
				 80483, -- Arcane Torrent (Blood elf focus)
				 25046, -- Arcane Torrent (Blood elf energy)
				 69179, -- Arcane Torrent (Blood elf rage)
				129597, -- Arcane Torrent (Blood elf chi)
				155145, -- Arcane Torrent (Blood elf holy power)
				107079, -- Quaking Palm (Monk)
				 20549, -- War Stomp (Tauren)
			},
		},
		PERSONAL = {
			59752, -- Every Man for Himself (Human)
			20589, -- Escape Artist (Gnome)
			69046, -- Pack Hobgoblin (Goblin)
			69070, -- Rocket Jump (Goblin)
			 7744, -- Will of the Forsaken (Undead)
		},
		HARMFUL = {
			69041, -- Rocket Barrage (Goblin)
		},
	},
	AURA = {
		PERSONAL = {
			87840, -- Running Wild (Worgen)
		},
	},
}, {
	-- map aura to provider
	[65116] = 20594, -- Stone Form (Dwarf)
	[20578] = 20577, -- Cannibalize (Undead)
})
