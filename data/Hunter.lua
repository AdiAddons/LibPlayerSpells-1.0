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
lib:__RegisterSpells("HUNTER", "60000", 1, {
	RAIDBUFF = {
		[ 19506] = "ATK_POWER",          -- Trueshot Aura
		[ 24604] = "CRITICAL",           -- Furious Howl
		[ 24844] = "MULTISTRIKE",        -- Breath of the Winds
		[ 34889] = "MULTISTRIKE",        -- Spry Attacks
		[ 35290] = "VERSATILITY",        -- Indomitable
		[ 50256] = "STAMINA",            -- Invigorating Roar
		[ 50518] = "VERSATILITY",        -- Chitinous Armor
		[ 50519] = "MULTISTRIKE",        -- Sonic Focus
		[ 57386] = "MULTISTRIKE VERSATILITY", -- Wild Strength
		[ 58604] = "MULTISTRIKE",        -- Double Bite
		[ 90309] = "CRITICAL",           -- Terrifying Roar
		[ 90355] = "BURST_HASTE",        -- Ancient Hysteria
		[ 90363] = "STATS CRITICAL",     -- Embrace of the Shale Spider
		[ 90364] = "STAMINA SPL_POWER" , -- Qiraji Fortitude
		[ 93435] = "MASTERY",            -- Roar of Courage
		[126309] = "SPL_POWER CRITICAL", -- Still Water
		[126373] = "CRITICAL",           -- Fearless Roar
		[128432] = "HASTE",              -- Cackling Howl
		[128433] = "SPL_POWER",          -- Serpent's Cunning
		[128997] = "MASTERY",            -- Spirit Beast Blessing
		[135678] = "HASTE",              -- Energizing Spores
		[159988] = "STATS",              -- Bark of the Wild
		[160003] = "STAMINA HASTE",      -- Flourish
		[160014] = "STAMINA",            -- Sturdiness
		[160017] = "STATS",              -- Blessing of Kongs
		[160039] = "MASTERY",            -- Keen Senses
		[160045] = "VERSATILITY",        -- Defensive Quills
		[160052] = "CRITICAL",           -- Strength of the Pack
		[160073] = "MASTERY",            -- Plainswalking
		[160074] = "HASTE",              -- Speed of the Swarm
		[160077] = "STATS VERSATILITY",  -- Strength of the Earth
		[173035] = "VERSATILITY",        -- Grace
	},
	DISPEL = {
		[19801] = "HARMFUL", -- Tranquilizing Shot
	},
}, {
	-- Map aura to provider
}, {
	-- Map aura to modified spell(s)
})
