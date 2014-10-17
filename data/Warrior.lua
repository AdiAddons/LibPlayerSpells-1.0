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
lib:__RegisterSpells("WARRIOR", "60000", 1, {
	COOLDOWN = {
		INTERRUPT = {
				  6552, -- Pummel
		},
		AURA = {
			PERSONAL = {
				107574, -- Avatar
				 18499, -- Berserker Rage
				 46924, -- Bladestorm  (Talent)
				 12292, -- Bloodbath (Self Buff ,Talent)
				118038, -- Die By The Sword (Arms, Fury)
				 55694, -- Enraged Regeneration (Talent)
				 12975, -- Last Stand (Prot)
				114192, -- Mocking Banner (Prot)
				  1719, -- Recklessness (Arms, Fury)
				132404, -- Shield Block (Prot)
				-- 156321, -- Shield Charge (Glad)
				   871, -- Shield Wall (Prot)
				 23920, -- Spell Reflect
				 12328, -- Sweeping Strikes (Arms)
			},
			HELPFUL = {
				147833, -- Intervene
				114028, -- Mass Spell Reflection
				 97463, -- Rallying Cry (Arms, Fury)
				-- 152277, -- Ravager (Talent)
				114029, -- Safeguard
				114030, -- Vigilance
			},
			HARMFUL = {
				113344, -- Bloodbath (Dot,Talent)
				167105, -- Colossus Smash (Arms)
				  1160, -- Demoralizing Shout (Prot)
				-- 176289, -- Siegebreaker
				 64382, -- Shattering Throw (Arms, Fury, Glyph)
				 18498, -- Silence (Glyph of Gag Order)
				132168, -- Shockwave (Talent)
				132169, -- Storm Bolt (Talent)
				  7922, -- Warbringer Stun (Talent)
			},
		},
	},
	AURA = {
		PERSONAL = {
			  2457, -- Battle Stance
			159362, -- Blood Craze (Prot)
			    71, -- Defensive Stance
			 12880, -- Enrage (Prot, Fury)
			112048, -- Shield Barrier (Prot)
			174926, -- Shield Barrier
			 50227, -- Sword and Board (Prot)
			122510, -- Ultimatum (Prot)
			169686, -- Unyielding Strikes (Prot, Talent)
			 32216, -- Victory Rush - Victorious
			 [1464] = "INVERT_AURA", -- Slam (Arms)
		},
		HARMFUL = {
			115767, -- Deep Wounds (Prot)
			115804, -- Mortal Wounds
			   772, -- Rend
			  6343, -- Thunder Clap Slow
		},
	},
	DISPEL = {
		 [23922] = "HARMFUL",     -- Shield Slam (Glyph of Shield Slam) (Prot)
	},
	RAIDBUFF = {
		[   469] = 'STAMINA',     -- Commanding Shout
		[  6673] = 'ATK_POWER',   -- Battle Shout
		[167188] = "VERSATILITY", -- Inspiring Presence
	},
}, {
	-- Map aura to provider
	[113344] =                   12292, -- Bloodbath (dot tracking)
	[ 12880] =                   18499, -- Enrage status on Berserker Rage
	[ 18498] =        { 57755, 6552, }, -- Heroic Throw, Pummel (Gag Order) (Silence effect)
	[115804] =                   12294, -- Mortal Wounds from Mortal Strike
	[115767] =        { 6343, 20243, }, -- Thunder Clap, Devastate (Deep Wounds)
	[ 97463] =                   97462, -- Rallying Cry (Arms, Fury)
	[132404] =                    2565, -- Shield Block (Prot)
	-- [156321] =                    2565, -- Shield Charge (Glad)
	[132168] =                   46968, -- Shockwave
	[132169] =                  107570, -- Storm Bolt
	[122510] =                      78, -- Ultimatum, Shield Slam => Free Heroic Strike (Prot)
	[169686] =                      78, -- Unyielding Strikes, Devastate => Low cost Heroic Strike
	[ 32216] =      { 34428, 103840, }, -- Victorious, Killing Blow => Victory Rush, Impending Victory
	[  7922] =                     100, -- Warbringer Stun (Charge)
}, {
	-- Map aura to modified spell(s)
})
