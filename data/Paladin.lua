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
lib:__RegisterSpells("PALADIN", 80100, 1, {
	COOLDOWN = {
		20271, -- Judgement
		53595, -- Hammer of the Righteous
			INTERRUPT = {
				96321, -- Rebuke
			},
			DISPEL = {
				HELPFUL = {
					[213644] = "DISEASE POISON", -- Cleanse Toxins
				},
			},
			AURA = {
				HELPFUL = {
					1044, -- Blessing of Freedom
					[25771] = "INVERT_AURA", -- Forbearance
						SURVIVAL = {
							1022, -- Blessing of Protection
							6940, -- Blessing of Sacrifice
						},
				},
				HARMFUL = {
					31935,  -- Avenger's Shield
					204242, -- Consecration
						CROWD_CTRL = {
							[62124] = "TAUNT", -- Hand of Reckoning
							[853] = "STUN",    -- Hammer of Justice
						},
				},
				PERSONAL = {
					188370, -- Consecration (Protection)
					276112, -- Divine Steed
						BURST = {
							31884, -- Avenging Wrath
						},
						SURVIVAL = {
							642,    -- Divine Shield
							31850,  -- Ardent Defender
							86659,  -- Guardian of Ancient Kings
							132403, -- Shield of the Righteous
						},
				},
			},
	},
	AURA = {
		HELPFUL = {
		},
		PERSONAL = {
		},
	},
},  {
	-- map aura to provider(s)
	[132403] = 53600, -- Shield of the Righteous
	[188370] = 26573, -- Consecration (Protection)
	[204242] = { -- Consecration
		26573,   -- Consecration (Protection)
	},
	[25771] = { -- Forbearance
		633,    -- Lay on Hands
		642,    -- Divine Shield
	   1022,    -- Blessing of Protection
		},
	[276112] = 190784, -- Divine Steed 	
})
