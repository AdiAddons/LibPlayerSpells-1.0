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
lib:__RegisterSpells("ROGUE", 70000, 1, {
	COOLDOWN = {
		 1725, -- Distract
		[1766] = "INTERRUPT", -- Kick
		AURA = {
			HELPFUL = {

			},
			HARMFUL = {
				CROWD_CTL = {
					 408, -- Kidney Shot (stun)
					2094, -- Blind (disorient)
				},
			},
			PERSONAL = {
				  2983, -- Sprint
				 36554, -- Shadowstep
				 57934, -- Tricks of the Trade
				185311, -- Crimson Vial
				185422, -- Shadow Dance
				212283, -- Symbols of Death
				227151, -- Death
				SURVIVAL = {
					 5277, -- Evasion
					11327, -- Vanish
					31224, -- Cload of Shadows
				},
				BURST = {
					121471, -- Shadow Blades
				}
			},
		},
	},
	AURA = {
		HELPFUL = {

		},
		HARMFUL = {
			195452, -- Nightblade
			206760, -- Night Terrors (slow)
			CROWD_CTL = {
				1833, -- Cheap Shot (stun)
				6770, -- Sap (incapacitate)
			},
		},
		PERSONAL = {
			1966, -- Feint
		},
	},
}, {
	-- map aura to provider(s)
	[ 11327] = 1856, -- Vanish
	[185422] = 185313, -- Shadow Dance
	[206760] = 195452, -- Night Terrors (slow) <- Nightblade
	[227151] = 212283, -- Death <- Symbols of Death
}, {
	-- map aura to modified spell(s)
	[227151] = 185438, -- Death -> Shadowstrike
})
