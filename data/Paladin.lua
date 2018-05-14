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
lib:__RegisterSpells("PALADIN", 80000, 1, {
	COOLDOWN = {
		20271, -- Judgement (Protection)
		53595, -- Hammer of the Righteous (Protection)
		INTERRUPT = {
			96321, -- Rebuke
		},
		DISPEL = {
			HELPFUL = {
				[213644] = "DISEASE POISON", -- Cleanse Toxins (Protection)
			},
		},
		AURA = {
			HELPFUL = {
			    1044, -- Blessing of Freedom
			  204018, -- Blessing of Spellwarding (Protection Talent)
			  [25771] = "INVERT_AURA", -- Forbearance
				SURVIVAL = {
					1022, -- Blessing of Protection
					6940, -- Blessing of Sacrifice
				},
			},
			HARMFUL = {
				 31935,  -- Avenger's Shield (Protection)
				196941, -- Judgement of Light (Protection Talent)
				204242, -- Consecration
				204079, -- Final Stand (Protection Talent / Taunt)
				204301, -- Blessed Hammer (Protection Talent)
				CROWD_CTRL = {
					[62124] = "TAUNT", -- Hand of Reckoning (Protection Taunt)
					  [853] = "STUN",    -- Hammer of Justice
					[20066] = "INCAPACITATE", -- Repentance 
				       [105421] = "DISORIENT", -- Blinding Light (Protection Talent)
				},
			},
			PERSONAL = {
				152262, -- Seraphim (Protection Talent)
				188370, -- Consecration (Protection)
				276112, -- Divine Steed
					BURST = {
					      31884, -- Avenging Wrath
					},
					SURVIVAL = {
						642, -- Divine Shield
					      31850, -- Ardent Defender
					      86659, -- Guardian of Ancient Kings
					     132403, -- Shield of the Righteous (Protection)
					     204150, -- Aegis of Light (Protection Talent)
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
	[105421] = 115750, -- Blinding Light (Disorient / Protection Talent)
	[132403] = 53600, -- Shield of the Righteous (Protection)
	[188370] = 26573, -- Consecration (Protection)
	[196941] = 275779, -- Judgement of Light (Protection Talent)
	[204079] = 62124, -- Final Stand to Hand of Reckoning (Taunt / Protection Talent)
	[204301] = 204019, -- Blessed Hammer (Protection Talent)
	[25771] = { -- Forbearance
		633,    -- Lay on Hands
		642,    -- Divine Shield
	       1022,    -- Blessing of Protection
		},
	[276112] = 190784, -- Divine Steed
}, {
	-- Map Aura to Modified Spell(s)
})
