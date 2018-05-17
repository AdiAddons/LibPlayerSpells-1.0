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
		    633, -- Lay on Hands
		  20473, -- Holy Shock (Holy)
		  24275, -- Hammer of Wrath (Retribution talent)
		  35395, -- Crusader Strike (Retribution/Holy)
		  53385, -- Divine Storm (Retribution)
		  53595, -- Hammer of the Righteous (Protection)
		  85222, -- Light of Dawn (Holy)
		 114158, -- Light's Hammer (Holy talent)
		 114165, -- Holy Prism (Holy talent)
		 184092, -- Light of the Protector (Protection)
		 184575, -- Blade of Justice (Retribution)
		 204035, -- Bastion of Light (Protection talent)
		 205228, -- Consecration (Retribution talent)
		 210191, -- Word of Glory (Retribution talent)
		 213652, -- Hand of the Protector (Protection talent)
		 275779, -- Judgement (Protection)
		[ 96231] = "INTERRUPT", -- Rebuke
		AURA = {
			HARMFUL = {
				 196941, -- Judgement of Light (Protection/Holy talent)
				 197277, -- Judgement (Retribution)
				 204242, -- Consecration (Protection/Holy)
				 204301, -- Blessed Hammer (Protection talent)
				 214222, -- Judgement (Holy)
				[ 31935] = "INTERRUPT", -- Avenger's Shield (Protection)
				[206891] = "UNIQUE_AURA", -- Inquisition (Protection honor talent)
				[267799] = "BURST", -- Execution Sentence (Retribution)
				CROWD_CTRL = {
					[ 20066] = "INCAPACITATE", -- Repentance
					[105421] = "DISORIENT", -- Blinding Light
					STUN = {
						   853, -- Hammer of Justice
						205290, -- Wake of Ashes (Retribution talent)
					},
					TAUNT = {
						 62124, -- Hand of Reckoning
						204079, -- Final Stand (Protection talent)
					},
				},
				SNARE = {
					183218, -- Hand of Hindrance (Retribution)
					255937, -- Wake of Ashes (Retribution talent)
				},
			},
			HELPFUL = {
				   1044, -- Blessing of Freedom
				 200025, -- Beacon of Virtue (Holy talent)
				 204018, -- Blessing of Spellwarding (Protection talent)
				 204335, -- Aegis of Light (Protection talent)
				 223306, -- Bestow Faith (Holy talent)
				[ 25771] = "INVERT_AURA", -- Forbearance
				SURVIVAL = {
					1022, -- Blessing of Protection
					6940, -- Blessing of Sacrifice
				},
			},
			PERSONAL = {
				 31821, -- Aura Mastery
				114250, -- Selfless Healer (Retribution talent)
				188370, -- Consecration (Protection)
				209785, -- Fires of Justice (Retribution talent)
				214202, -- Rule of Law (Holy talent)
				221883, -- Divine Steed (Human)
				221885, -- Divine Steed (Tauren)
				221886, -- Divine Steed (Blood Elf)
				221887, -- Divine Steed (Draenai/Lightforged Draenai)
				269571, -- Zeal (Retribution talent)
				276111, -- Divine Steed (Dwarf)
				276112, -- Divine Steed (Dark Iron Dwarf)
				BURST = {
					 31884, -- Avenging Wrath
					105809, -- Holy Avenger (Holy talent)
					216331, -- Avenging Crusader (Holy talent)
					231895, -- Crusade (Retribution talent)
				},
				SURVIVAL = {
					   498, -- Divine Protection (Holy)
					   642, -- Divine Shield
					 31850, -- Ardent Defender
					 86659, -- Guardian of Ancient Kings
					132403, -- Shield of the Righteous (Protection)
					152262, -- Seraphim (Protection talent)
					184662, -- Shield of Vengeance (Retribution)
					204150, -- Aegis of Light (Protection talent)
					205191, -- Eye for an Eye (Retribution talent)
				},
			},
		},
		DISPEL = {
			HELPFUL = {
				[  4987] = "DISEASE POISON MAGIC", -- Cleanse (Holy)
				[213644] = "DISEASE POISON", -- Cleanse Toxins (Protection/Retribution)
				[236186] = "DISEASE POISON", -- Cleansing Light (Protection/Retribution honor talent)
			},
		},
	},
	AURA = {
		HELPFUL = {
			 53563, -- Beacon of Light (Holy)
			156910, -- Beacon of Faith (Holy talent)
			203538, -- Greater Blessing of Kings (Retribution)
			203539, -- Greater Blessing of Wisdom (Retribution)
		},
		PERSONAL = {
			 84963, -- Inquisition (Retribution talent)
			216411, -- Divine Purpose (Holy talent - Holy Shock)
			216413, -- Divine Purpose (Holy talent - Light of Dawn)
			223819, -- Divine Purpose (Retribution talent)
			267611, -- Righteous Verdict (Retribution talent)
			271581, -- Divine Judgement (Retribution talent)
		},
	},
}, {
	-- map aura to provider(s)
	[ 25771] = { -- Forbearance
		   633, -- Lay on Hands
		   642, -- Divine Shield
		  1022, -- Blessing of Protection
		204018, -- Blessing of Spellwarding
	},
	[105421] = 115750, -- Blinding Light (Protection talent)
	[114250] =  85804, -- Selfless Healer (Retribution talent)
	[132403] =  53600, -- Shield of the Righteous (Protection)
	[188370] =  26573, -- Consecration (Protection)
	[196941] = 183778, -- Judgement of Light (Protection/Holy talent)
	[197277] =  20271, -- Judgement (Retribution)
	[204079] = 204077, -- Final Stand (Protection talent)
	[204242] = 204054, -- Consecration (Protection) <- Consecrated Ground
	[204301] = 204019, -- Blessed Hammer (Protection talent)
	[204335] = 204150, -- Aegis of Light (Protection talent)
	[206891] = 207028, -- Intimidated -> Inquisition (Protection honor talent)
	[209785] = 203316, -- Fires of Justice (Retribution talent)
	[214222] = 275773, -- Judgement (Holy)
	[216411] = 197646, -- Divine Purpose (Holy talent - Holy Shock)
	[216413] = 197646, -- Divine Purpose (Holy talent - Light of Dawn)
	[223819] = 223817, -- Divine Purpose (Retribution talent)
	[267611] = 267610, -- Righteous Verdict (Retribution talent)
	[267799] = 267798, -- Execution Sentence (Retribution talent)
	[221883] = 190874, -- Divine Steed (Human)
	[221885] = 190874, -- Divine Steed (Tauren)
	[221886] = 190874, -- Divine Steed (Blood Elf)
	[221887] = 190874, -- Divine Steed (Draenai/Lightforged Draenai)
	[269571] = 269569, -- Zeal (Retribution talent)
	[271581] = 271580, -- Divine Judgement (Retribution talent)
	[276111] = 190874, -- Divine Steed (Dwarf)
	[276112] = 190874, -- Divine Steed (Dark Iron Dwarf)
}, {
	-- map aura to modified spell(s)
	[ 31884] = { -- Avenging Wrath
		24275, -- Hammer of Wrath (Retribution talent)
		31884, -- Avenging Wrath
	},
	[114250] =  19750, -- Selfless Healer (Retribution talent) -> Flash of Light
	[183778] = { -- Judgement of Light (Protection/Holy talent)
		275773, -- Judgement (Holy)
		275779, -- Judgement (Protection)
	},
	[196941] = { -- Judgement of Light (Protection/Holy talent)
		275773, -- Judgement (Holy)
		275779, -- Judgement (Protection)
	},
	[204079] =    642, -- Final Stand (Protection talent) -> Divine Shield
	[204242] =  26573, -- Consecration (Protection)
	[209785] =  35395, -- Fires of Justice (Retribution talent) -> Crusader Strike
	[216411] =  20473, -- Divine Purpose (Holy talent) -> Holy Shock
	[216413] =  85222, -- Divine Purpose (Holy talent) -> Light of Dawn
	[223819] = { -- Divine Purpose (Retribution)
		 53385, -- Divine Storm
		 85256, -- Templar's Verdict
		210191, -- Word of Glory
		215661, -- Justicar's Vengeance
		267798, -- Execution Sentence
	},
	[231895] = { -- Crusade (Retribution talent)
		231895, -- Crusade (Retribution talent)
		24275, -- Hammer of Wrath (Retribution talent)
	},
	[267611] =  85256, -- Righteous Verdict (Retribution talent) -> Templar's Verdict
	[269571] =  20271, -- Zeal (Retribution talent) -> Judgement
	[271581] =  20271, -- Divine Judgement (Retribution talent) -> Judgement
})
