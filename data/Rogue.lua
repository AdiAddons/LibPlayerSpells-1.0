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
along with LibPlayerSpells-1.0. If not, see <http://www.gnu.org/licenses/>.
--]]

local lib = LibStub('LibPlayerSpells-1.0')
if not lib then return end
lib:__RegisterSpells('ROGUE', 80000, 1, {
	COOLDOWN = {
		   1725, -- Distract
		 195457, -- Grappling Hook (Outlaw)
		[  1766] = 'INTERRUPT', -- Kick
		AURA = {
			HARMFUL = {
				CROWD_CTRL = {
					DISORIENT = {
						2094, -- Blind
					},
					INCAPACITATE = {
						1766, -- Gouge (Outlaw)
					},
					STUN = {
						199804, -- Between the Eyes (Outlaw)
					},
				},
			},
			HELPFUL = {
				57934, -- Tricks of the Trade
			},
			PERSONAL = {
				  2987, -- Sprint
				 11327, -- Vanish
				 13877, -- Blade Flurry (Outlaw)
				114018, -- Shroud of Concealment
				BURST = {
					13750, -- Adrenalin Rush (Outlaw)
				},
				SURVIVAL = {
					  1966, -- Feint
					 31224, -- Cloak of Shadows
					185311, -- Crimson Vial
					199754, -- Riposte (Outlaw)
				},
			},
		},
	},
	AURA = {
		HARMFUL = {
			CROWD_CTRL = {
				INCAPACITATE = {
					6770, -- Sap
				},
				STUN = {
					1833, -- Cheap Shot
				},
			},
			SNARE = {
				185763, -- Pistol Shot (Outlaw)
			},
		},
		HELPFUL = {},
		PERSONAL = {
			  1784, -- Stealth
			193356, -- Broadside (Outlaw)
			193357, -- Ruthless Precision (Outlaw)
			193358, -- Grand Melee (Outlaw)
			193359, -- True Bearing (Outlaw)
			195627, -- Opportunity (Outlaw)
			199600, -- Buried Treasure (Outlaw)
			199603, -- Skull and Crossbones (Outlaw)
		},
	},
}, {
	-- map aura to provider(s)
	[ 11327] =   1856, -- Vanish
	[193356] = 193316, -- Broadside <- Roll the Bones (Outlaw)
	[193357] = 193316, -- Ruthless Precision <- Roll the Bones (Outlaw)
	[193358] = 193316, -- Grand Melee <- Roll the Bones (Outlaw)
	[193359] = 193316, -- True Bearing <- Roll the Bones (Outlaw)
	[195627] = 193315, -- Opportunity <- Sinister Strike (Outlaw)
	[199600] = 193316, -- Buried Treasure <- Roll the Bones (Outlaw)
	[199603] = 193316, -- Skull and Crossbones <- Roll the Bones (Outlaw)
}, {
	-- map aura to modified spell(s)
	[195627] = 185763, -- Opportunity -> Pistol Shot (Outlaw)
})
