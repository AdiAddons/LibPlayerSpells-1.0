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
lib:__RegisterSpells("WARRIOR", "50400", 8, {
	POWER_REGEN = {
		  2457, -- Battle Stance
		  2458, -- Berserker Stance
			71, -- Defensive Stance
		143268, -- Unbridled Wrath
	},
	COOLDOWN = {
		POWER_REGEN = {
				HARMFUL = {
						23881, -- Bloodthirst
						12294, -- Mortal Strike
						 6572, -- Revenge
								DISPEL = {
										23922, -- Shield Slam (Glyphed)
								},
				},
		},
		INTERRUPT = {
				102060, -- Disrupting Shout
				  6552, -- Pummel
		},
		AURA = {
			PERSONAL = {
				107574, -- Avatar
				 18499, -- Berserker Rage
				 46924, -- Bladestorm
				 12292, -- Bloodbath (self buff)
				125565, -- Demo Shout
				118038, -- Die By The Sword
				 55694, -- Enraged Regeneration
				 12975, -- Last Stand
				114192, -- Mocking Banner
				  1719, -- Recklessness
				122286, -- Savage Defense (Symbiosis - Prot)
				132404, -- Shield Block
				   871, -- Shield Wall
				 23920, -- Spell Reflect
				 12328, -- Sweeping Strikes
				-- 145672, -- Riposte
				--  50227, -- Sword and Board
				--  93098, -- Vengeance
			},
			HELPFUL = {
				--  6673, -- Battle Shout
				--   469, -- Commanding Shout
				  3411, -- Intervene
				114028, -- Mass Spell Reflection
				 97463, -- Rallying Cry
				114029, -- Safeguard
				114206, -- Skull Banner
				122294, -- Stampeding Shout (Symbiosis - DPS)
				114030, -- Vigilance
			},
			HARMFUL = {
				113344, -- Bloodbath (dot)
				 86346, -- Colossus Smash
				114205, -- Demo Banner
				 64382, -- Shattering Throw
				 18498, -- Silence (Glyph of Gag Order)
				132168, -- Shockwave
				132169, -- Storm Bolt
				   355, -- Taunt
				105771, -- Warbringer Root
				137637, -- Warbringer Slow
				-- 676, -- Disarm
			},
		},
	},
	AURA = {
		PERSONAL = {
			 12880, -- Enrage
			112048, -- Shield Barrier
			139958, -- Sudden Execute
			122510, -- Ultimatum
			 32216, -- Victory Rush Available
			122016, -- Glyph of Incite
		},
		HARMFUL = {
			115767, -- Deep Wounds
			115804, -- Mortal Wounds
			--   1715, -- Hamstring
			--  12323, -- Piercing Howl
			--  86346, -- Physical Vulnerability
			--   6343, -- Thunder Clap
			-- 113746, -- Weakened Armor
			-- 115798, -- Weakened Blows
		},
	},
	RAIDBUFF = {
		[6673] = 'ATK_POWER', -- Battle Shout
		[ 469] = 'STAMINA',   -- Commanding Shout
	},
}, {
	-- Map aura to provider
	[113344] =                   12292, -- Bloodbath (dot tracking)
	[114205] =                  114203, -- Demo Banner
	[125565] =                    1160, -- Demo Shout Self Buff
	[ 12880] =       { 18499, 55694, }, -- Enrage status on Berserker Rage, Enraged Regeneration
	[ 18498] =        { 57755, 6552, }, -- Heroic Throw, Pummel (Gag Order) (Silence effect)
	[115767] = { 12294, 6343, 20243, }, -- Mortal Strike, Thunder Clap, Devastate (Deep Wounds)
	[115804] =      { 12294, 100130, }, -- Mortal Wounds, Mortal Strike, Wild Strike => Reduce Healing Taken By Target
	[ 97463] =                   97462, -- Rallying Cry
	[132404] =                    2565, -- Shield Block
	[114206] =                  114207, -- Skull Banner
	[132168] =                   46968, -- Shockwave
	[132169] =                  107570, -- Storm Bolt
	[139958] =                    7384, -- Sudden Execute, Execute => Free Overpower
	[122510] =            { 78, 845, }, -- Ultimatum, Shield Slam => Free Heroic Strike, Cleave
	[122016] =            { 78, 845, }, -- Incite, Demoralizing Shout => Free Heroic Strike, Cleave
	[ 32216] =      { 34428, 103840, }, -- Victorious, Killing Blow => Victory Rush, Impending Victory
	[105771] =                     100, -- Warbringer Root (Charge)
	-- [113746] =                    7386, -- Weakened Armor, Sunder
	-- [137637] =                     100, -- Warbringer Slow (Charge)
}, {
	-- Map aura to modified spell(s)
	-- [ 50227] =                   23922, -- Sword and Board, Devastate => Shield Slam
	-- [ 12328] =                    1464, -- Sweeping Strikes => Slam
	-- [ 86346] =                    1464, -- Colossus Smash => Slam
})
