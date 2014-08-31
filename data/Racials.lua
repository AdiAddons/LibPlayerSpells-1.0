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
lib:__RegisterSpells("RACIAL", 50400, 1, {
	COOLDOWN = {
		AURA = {
			PERSONAL = {
				26297, -- Berserking
				20542, -- Blood Fury (attack power)
				33702, -- Blood Fury (spell power)
				33697, -- Blood Fury (both)
				20594, -- Stoneform
				58984, -- Shadowmeld
				68992, -- Darkflight
			},
			HELPFUL = {
				59545, -- Gift of the Naaru
				59543, -- Gift of the Naaru
				59548, -- Gift of the Naaru
				59542, -- Gift of the Naaru
				59544, -- Gift of the Naaru
				59547, -- Gift of the Naaru
				28880, -- Gift of the Naaru
			},
			HARMFUL = {
				 28730, -- Arcane Torrent (mana)
				 50613, -- Arcane Torrent (runic power)
				 80483, -- Arcane Torrent (focus)
				 25046, -- Arcane Torrent (energy)
				 69179, -- Arcane Torrent (rage)
				107079, -- Quaking Palm
				 20549, -- War Stomp
			},
		},
		PERSONAL = {
			59752, -- Every Man for Himself
			20589, -- Escape Artist
			69070, -- Rocket Jump
			 7744, -- Will of the Forsaken
		},
		HARMFUL = {
			69041, -- Rocket Barrage
		},
	},
})
