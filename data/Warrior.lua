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
lib:__RegisterSpells("WARRIOR", "60100", 6, {
	COOLDOWN = {
		INTERRUPT = {
				  6552, -- Pummel
		},
		AURA = {
			PERSONAL = {
				  1719, -- Recklessness (Arms, Fury)
				 12292, -- Bloodbath (Self Buff ,Talent 90)
				 12328, -- Sweeping Strikes (Arms)
				 12975, -- Last Stand (Prot)
				 18499, -- Berserker Rage
				 23920, -- Spell Reflect
				 46924, -- Bladestorm (Talent 90)
				 55694, -- Enraged Regeneration (Talent 30)
				107574, -- Avatar (Talent 90)
				114192, -- Mocking Banner (Prot)
				118038, -- Die By The Sword (Arms, Fury)
				132404, -- Shield Block (Prot)
				133278, -- Glyph of Heroic Leap (Speed)
				169667, -- Shield Charge (Glad)
				158300, -- Resolve (Prot)
				[   871] = "SURVIVAL", -- Shield Wall (Prot)
			},
			HELPFUL = {
				 46947, -- Safeguard (Talent 75)
				 97463, -- Rallying Cry (Arms, Fury)
				114028, -- Mass Spell Reflection (Talent 75)
				114030, -- Vigilance (Talent 75)
				147833, -- Intervene
				152277, -- Ravager (Talent 100)
			},
			HARMFUL = {
				  1160, -- Demoralizing Shout (Prot)
				  7922, -- Warbringer Stun (Talent 15)
				 18498, -- Silence (Glyph of Gag Order)
				 64382, -- Shattering Throw (Arms, Fury, Glyph of Shattering Throw)
				113344, -- Bloodbath (Dot, Talent 90)
				132168, -- Shockwave (Talent 60)
				132169, -- Storm Bolt (Talent 60)
				167105, -- Colossus Smash (Arms)
				176289, -- Siegebreaker
			},
		},
	},
	AURA = {
		PERSONAL = {
			    71, -- Defensive Stance
			 [1464] = "INVERT_AURA", -- Slam (Arms)
			  2457, -- Battle Stance
			 12880, -- Enrage (Prot, Fury)
			 29838, -- Second Wind
			 32216, -- Victory Rush (Talent 45)
			 50227, -- Sword and Board (Prot)
			 52437, -- Sudden Death (Talent 45)
			 85739, -- Meat Cleaver (Fury)
			112048, -- Shield Barrier (Prot)
			122510, -- Ultimatum (Prot)
			131116, -- Raging Blow! (Fury)
			156291, -- Gladiator Stance (Talent 100)
			159362, -- Blood Craze (Prot)
			159740, -- Glyph of Raging Blow
			169686, -- Unyielding Strikes (Prot, Talent 45)
			174926, -- Shield Barrier (Arms, Fury)
		},
		HARMFUL = {
			   772, -- Rend (Arms)
			  6343, -- Thunder Clap (Slow)
			115767, -- Deep Wounds (Prot)
			115804, -- Mortal Wounds (Reduced Healing)
			129923, -- Sluggish (Glyph of Hindering Strikes)
		},
	},
	DISPEL = {
		 [23922] = "HARMFUL",      -- Shield Slam (Prot, Glyph of Shield Slam)
	},
	RAIDBUFF = {
		[   469] = 'STAMINA',      -- Commanding Shout
		[  6673] = 'ATK_POWER',    -- Battle Shout
		[167188] = "VERSATILITY",  -- Inspiring Presence
	},
}, {
	-- Map aura to provider
	[  7922] =                100, -- Warbringer Stun (Charge)
	[ 12880] =              18499, -- Enrage status on Berserker Rage
	[ 18498] =   { 57755, 6552, }, -- Heroic Throw, Pummel (Gag Order) (Silence effect)
	[ 32216] = { 34428, 103840, }, -- Victorious, Killing Blow => Victory Rush, Impending Victory
	[ 46947] =             114029, -- Safeguard
	[ 52437] =   {5308, 163201, }, -- Sudden Death
	[ 85739] =               1680, -- Meat Cleaver Stacks
	[ 97463] =              97462, -- Rallying Cry (Arms, Fury)
	[113344] =              12292, -- Bloodbath (dot tracking)
	[115767] =   { 6343, 20243, }, -- Thunder Clap, Devastate (Deep Wounds)
	[115804] = { 12294, 100130, }, -- Mortal Wounds from Mortal Strike, Wild Strike -- should be off by default, it's mostly pointless
	[122510] =                 78, -- Ultimatum, Shield Slam => Free Heroic Strike (Prot)
	[131116] =              85288, -- Raging Blow
	[132168] =              46968, -- Shockwave
	[132169] =             107570, -- Storm Bolt
	[132404] =               2565, -- Shield Block (Prot)
	[147833] =               3411, -- Intervene
	[169667] =             156321, -- Shield Charge (Glad)
	[159740] =              23881, -- Glyph of Raging Blow
	[133278] =               6544, -- Glyph of Heroic Leap
	[169686] =                 78, -- Unyielding Strikes, Devastate => Low cost Heroic Strike
}, {
	-- Map aura to modified spell(s)
})
