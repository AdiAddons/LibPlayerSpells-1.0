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
lib:__RegisterSpells("WARRIOR", 70000, 3, {
	COOLDOWN = {
		INTERRUPT = {
			6552, -- Pummel
		},
		AURA = {
			PERSONAL = {
				  1719, -- Battle Cry
				 18499, -- Berserker Rage
				 23920, -- Spell Reflect
				107574, -- Avatar (Talent 45)
				132404, -- Shield Block (Prot)
				202289, -- Renewed Fury (Talent 45)
				202164, -- Bounding Stride (Talent 60)
				227744, -- Ravager (Talent 100)
				227847, -- Bladestorm (Arms)
				SURVIVAL = {
					   871, -- Shield Wall (Prot)
					 12975, -- Last Stand (Prot)
					118038, -- Die by the Sword (Arms, Fury)
				},
			},
			HELPFUL = {
				 97463, -- Commanding Shout
				223658, -- Safeguard (Talent 30)
			},
			HARMFUL = {
				  1160, -- Demoralizing Shout (Prot)
				  7922, -- Warbringer Stun (Talent 15)
				132168, -- Shockwave (Talent 15)
				132169, -- Storm Bolt (Talent 15)
				208086, -- Colossus Smash (Arms)
			},
		},
	},
	AURA = {
		HARMFUL = {
			  6343, -- Thunder Clap (Slow)
			105771, -- Charge Root
			115767, -- Deep Wounds
		},
		PERSONAL = {
			 32216, -- Victory Rush
			188923, -- Cleave Whirlwind
			122510, -- Ultimatum (Prot)(Talent 45)
			190456, -- Ignore Pain (Prot)
			204488, -- Focused Rage
		},
	},
}, {
	-- Map [aura] to provider (button)
	[  7922] = 198304, -- Warbringer Stun (Charge)
	[ 32216] = { -- Victorious
		 34428, -- Victory Rush
		202168, -- Impending Victory
	},
	[ 97463] = 97462, -- Commanding Shout
	[105771] = 100, -- Charge Root
	[115767] = 20243, -- Devastate (Deep Wounds)
	[122510] = 204488, -- Ultimatum
	[132168] = 46968, -- Shockwave
	[132169] = 107570, -- Storm Bolt
	[132404] = 2565, -- Shield Block (Prot)
	[188923] = 845, -- Cleave
	[202164] = 6544, -- Bounding Stride
	[208086] = 167105, -- Colossus Smash
	[227744] = 228920, -- Ravager
	[223658] = 198304, -- Safeguard
}, {
	-- map aura to modified spell(s)
	[188923] = 1680, -- Cleave to Whirlwind
})
