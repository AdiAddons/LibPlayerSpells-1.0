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
				102060, -- Disrupting Shout
				  6552, -- Pummel
		},
		AURA = {
			PERSONAL = {
				107574, -- Avatar
				 18499, -- Berserker Rage
				 46924, -- Bladestorm
				 12292, -- Bloodbath (Self Buff)
				125565, -- Demoralizing Shout (Prot)
				118038, -- Die By The Sword (Arms, Fury)
				 55694, -- Enraged Regeneration
				 12975, -- Last Stand (Prot)
				114192, -- Mocking Banner
				  1719, -- Recklessness
				132404, -- Shield Block (Prot)
				   871, -- Shield Wall
				 23920, -- Spell Reflect
				 12328, -- Sweeping Strikes (Arms)
			},
			HELPFUL = {
				  3411, -- Intervene
				114028, -- Mass Spell Reflection
				 97463, -- Rallying Cry
				114029, -- Safeguard
				114030, -- Vigilance
			},
			HARMFUL = {
				113344, -- Bloodbath (dot)
				 86346, -- Colossus Smash (Arms, Fury)
				 64382, -- Shattering Throw
				 18498, -- Silence (Glyph of Gag Order)
				132168, -- Shockwave
				132169, -- Storm Bolt
				105771, -- Warbringer Root
			},
		},
	},
	AURA = {
		PERSONAL = {
			 12880, -- Enrage
			112048, -- Shield Barrier (Prot)
			 50227, -- Sword and Board (Prot)
			122510, -- Ultimatum (Prot)
			 32216, -- Victory Rush - Victorious
		},
		HARMFUL = {
			115767, -- Deep Wounds
		},
	},
	RAIDBUFF = {
		[ 6673] = 'ATK_POWER', -- Battle Shout
		[  469] = 'STAMINA',   -- Commanding Shout
	},
	DISPEL = {
		[23922] = "HARMFUL",   -- Shield Slam (Glyph of Shield Slam) (Prot)
	},
	RAIDBUFF = {
		[   469] = 'STAMINA',     -- Commanding Shout
		[  6673] = 'ATK_POWER',   -- Battle Shout
		[167188] = "VERSATILITY", -- Inspiring Presence
	},
}, {
	-- Map aura to provider
	[113344] =                   12292, -- Bloodbath (dot tracking)
	[125565] =                    1160, -- Demo Shout Self Buff
	[ 12880] =       { 18499, 55694, }, -- Enrage status on Berserker Rage, Enraged Regeneration
	[ 18498] =        { 57755, 6552, }, -- Heroic Throw, Pummel (Gag Order) (Silence effect)
	[115767] = { 12294, 6343, 20243, }, -- Mortal Strike, Thunder Clap, Devastate (Deep Wounds)
	[ 97463] =                   97462, -- Rallying Cry
	[132404] =                    2565, -- Shield Block
	[132168] =                   46968, -- Shockwave
	[132169] =                  107570, -- Storm Bolt
	[122510] =                      78, -- Ultimatum, Shield Slam => Free Heroic Strike
	[ 32216] =      { 34428, 103840, }, -- Victorious, Killing Blow => Victory Rush, Impending Victory
	[105771] =                     100, -- Warbringer Root (Charge)
}, {
	-- Map aura to modified spell(s)
	-- [ 50227] =                   23922, -- Sword and Board, Devastate => Shield Slam
	-- [ 12328] =                    1464, -- Sweeping Strikes => Slam
	-- [ 86346] =                    1464, -- Colossus Smash => Slam
})
