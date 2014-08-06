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
	COOLDOWN = {
		[147362] = "INTERRUPT", -- Counter Shot
		    781, -- Disengage
		   6991, -- Feed Pet
		   1543, -- Flare -- NOTE: debuff handling unneeded due to spell mechanics
		  53351, -- Kill Shot
		 157708, -- Kill Shot (with Enhanced Kill Shot 157707)
		  53209, -- Chimaera Shot
		AURA = {
			HARMFUL = {
				 1462, -- Beast Lore
				 3674, -- Black Arrow
				--  5116, -- Concussive Shot -- XXX: added though Common rules in ABA
				-- 20736, -- Distracting Shot -- XXX: added through DRData (taunt)
				 53301, -- Explosive Shot
				-- 13812, -- Explosive Trap -- FIXME: ABA freezes the client on aura refresh
				--  3355, -- Freezing Trap -- FIXME: ABA freezes the client on aura refresh
				135299, -- Ice Trap
				 25809, -- Crippling Poison
			},
			HELPFUL = {
				 13159, -- Aspect of the Pack
				172106, -- Aspect of the Fox
				  1462, -- Beast Lore
				 54216, -- Master's Call
			},
			PERSONAL = {
				   5118, -- Aspect of the Cheetah
				[157760] = "SURVIVAL", -- Camouflage
				[148467] = "SURVIVAL", -- Deterrence
				  -- 56453, -- Lock and Load -- FIXME: ABA freezes the client
				[  5384] = "SURVIVAL", -- Feign Death
				  35079, -- Misdirection
				[ 19574] = "BURST", -- Bestial Wrath
				[ 82692] = "BURST", -- Focus Fire
				  -- 53257, -- Cobra Strikes -- FIXME: ABA freezes the client
				[  3045] = "BURST", -- Rapid Fire
				-- [ 82921] = "BURST", -- Bombardment -- FIXME: ABA freezes the client on aura refresh
			},
		},
	},
	AURA = {
		HARMFUL = {
			-- 118253, -- Serpent Sting -- FIXME: ABA freezes the client
		},
		PET = {
			136, -- Mend Pet -- FIXME: ABA freezes the client on aura refresh
		},
		PERSONAL = {
			6197, -- Eagle Eye
			1515, -- Tame Beast
		},
	},
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
	-- [118253] = 87935, -- Serpent Sting -- FIXME: ABA freezes the client
	[157760] = 157754, -- Camouflage
	-- [ 56453] = 53301, -- Lock and Load <- Explosive Shot -- FIXME: ABA freezes the client
	-- [ 13812] = { -- FIXME: ABA freezes the client on aura refresh
	-- 	13813, -- Explosive Trap
	-- 	82939, -- Explosive Trap (Trap Launcher)
	-- },
	-- [  3355] = { -- FIXME: ABA freezes the client on aura refresh
	-- 	 1499, -- Freezing Trap
	-- 	60192, -- Freezing Trap (Trap Launcher)
	-- },
	[135299] = {
		13809, -- Ice Trap
		82941, -- Ice Trap (Trap Launcher)
	},
	[ 25809] = {
		34600, -- Snake Trap
		82948, -- Snake Trap (Trap Launcher) -- TODO: bugged on BETA currently
	},
	[ 54216] = 53271, -- Master's Call
	[ 35079] = 34477, -- Misdirection
	-- [ 53257] = 53260, -- Cobra Strikes -- FIXME: ABA freezes the client
	-- [ 82921] = 35110, -- Bombardment -- FIXME: ABA freezes the client on aura refresh
}, {
	-- Map aura to modified spell(s)
	-- [118253] = { -- FIXME: ABA freezes the client
	-- 	3044, -- Arcane Shot
	-- 	2643, -- Multi-Shot
	-- },
	-- [ 53257] = 3044, -- Cobra Strikes <-- Arcane Shot -- FIXME: ABA freezes the client
	-- [ 82921] = 2643, -- Bombardment <-- Multi-Shot -- FIXME: ABA freezes the client on aura refresh
})
