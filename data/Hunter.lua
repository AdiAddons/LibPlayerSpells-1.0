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
lib:__RegisterSpells("HUNTER", "50400", 1, {
	["COOLDOWN"] = {
		   781, -- Disengage
		109259, -- Powershot
		120360, -- Barrage
		120679, -- Dire Beast
		120697, -- Lynx Rush
		121818, -- Stampede
		147362, -- Counter Shot
	},
	["PERSONAL SURVIVAL COOLDOWN"] = {
		109304, -- Exhilaration
	},
	["PERSONAL SURVIVAL COOLDOWN AURA"] = {
		 53271, -- Master's Call
		 19263, -- Deterrence
		148467, -- Deterrence (talented)
		 51753, -- Camouflage
		  5384, -- Feign Death
	},
	["PERSONAL BURST COOLDOWN AURA"] = {
		  3045, -- Rapid Fire
		 34692, -- The Beast Within
	},
	["PERSONAL AURA"] = {
		 82726, -- Fervor
		 82925, -- Ready, Set, Aim...
		 53220, -- Steady Focus (buff)
	},
	["HARMFUL AURA"] = {
		  1978, -- Serpent String
	},
	["HARMFUL COOLDOWN AURA"] = {
		  1499, -- Freezing Trap
		  3674, -- Black Arrow
		 13813, -- Explosive Trap
		 19386, -- Wyvern Sting
		 19503, -- Scatter Shot
		 19577, -- Intimidation
		 20736, -- Distracting Shot
		 34490, -- Silencing Shot
		109248, -- Binding Shot
		117050, -- Glaive Toss
		131894, -- A Murder of Crows
	},
	-- Special cases
	[   136] = "PET AURA", -- Mend Pet
	[  1130] = "HARMFUL UNIQUE_AURA AURA", -- Hunter's Mark
	[ 19623] = "PET AURA", -- Frenzy
	[ 34477] = "PERSONAL COOLDOWN AURA", -- Misdirection
}, {
	-- Map aura to provider
	[19623] = 82692, -- Frenzy <= Focus Fire
	[53220] = 53224, -- Steady Focus
	[82925] = 34487, -- Ready, Set, Aim... <= Master Marksman
}, {
	-- Map aura to modified spell(s)
	[53220] = 56641, -- Steady Focus => Steady Shot
	[82925] = 19434, -- Ready, Set, Aim... => Aimed Shot
})
