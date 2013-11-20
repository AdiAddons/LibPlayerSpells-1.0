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

local lib = LibStub("LibPlayerSpells-1.0", true)
if not lib then return end
lib:__RegisterSpells("racials", 50400, 1, {
	["PERSONAL COOLDOWN AURA"] = {
		[ 26297] = true, -- Berserking
		[ 20542] = true, -- Blood Fury (attack power)
		[ 33702] = true, -- Blood Fury (spell power)
		[ 33697] = true, -- Blood Fury (both)
		[ 20594] = true, -- Stoneform
		[ 58984] = true, -- Shadowmeld
		[ 68992] = true, -- Darkflight
	},
	["HELPFUL COOLDOWN AURA"] = {
		[ 59545] = true, -- Gift of the Naaru
		[ 59543] = true, -- Gift of the Naaru
		[ 59548] = true, -- Gift of the Naaru
		[ 59542] = true, -- Gift of the Naaru
		[ 59544] = true, -- Gift of the Naaru
		[ 59547] = true, -- Gift of the Naaru
		[ 28880] = true, -- Gift of the Naaru
	},
	["HARMFUL COOLDOWN AURA"] = {
		[ 28730] = true, -- Arcane Torrent (mana)
		[ 50613] = true, -- Arcane Torrent (runic power)
		[ 80483] = true, -- Arcane Torrent (focus)
		[ 25046] = true, -- Arcane Torrent (energy)
		[ 69179] = true, -- Arcane Torrent (rage)
		[107079] = true, -- Quaking Palm
		[ 20549] = true, -- War Stomp
	},
	["PERSONAL COOLDOWN"] = {
		[ 59752] = true, -- Every Man for Himself
		[ 20589] = true, -- Escape Artist
		[ 69070] = true, -- Rocket Jump
		[  7744] = true, -- Will of the Forsaken
	},
	["HARMFUL COOLDOWN"] = {
		[ 69041] = true, -- Rocket Barrage
	},
})
