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
lib:__RegisterSpells("HUNTER", "60000", 5, {
	COOLDOWN = {
		[147362] = "INTERRUPT", -- Counter Shot
		[120679] = "POWER_REGEN", -- Dire Beast (talent)
		    781, -- Disengage
		   6991, -- Feed Pet
		   1543, -- Flare -- NOTE: debuff handling unneeded due to spell mechanics
		  53351, -- Kill Shot
		 157708, -- Kill Shot (with Enhanced Kill Shot 157707)
		  53209, -- Chimaera Shot
		 109304, -- Exhilaration (talent)
		 121818, -- Stampede (talent)
		 109259, -- Power Shot (talent)
		 120360, -- Barrage (talent)
		AURA = {
			HARMFUL = {
				  1462, -- Beast Lore
				  3674, -- Black Arrow
				117405, -- Binding Shot (afflicted)
				 53301, -- Explosive Shot
				 13812, -- Explosive Trap
				  3355, -- Freezing Trap
				135299, -- Ice Trap
				 25809, -- Crippling Poison
				131894, -- A Murder of Crows (talent)
				120761, -- Glaive Toss (talent) -- TODO: 2 ids same effect; add to snares in Common rules in ABA
				121414, -- Glaive Toss (talent) -- TODO: 2 ids same effect; add to snares in Common rules in ABA
				--   5116, -- Concussive Shot -- XXX: added through Common rules in ABA
				--  20736, -- Distracting Shot -- XXX: added through DRData (taunt)
				-- 136634, -- Narrow Escape (talent) -- XXX: added through DRData (root)
				-- 117526, -- Binding Shot (talent) -- XXX: added through DRData (stun)
				--  19386, -- Wyvern Sting (talent) -- XXX: added through DRData (incapacitate)
				--  24394, -- Intimidation (talent) -- XXX: added through DRData (stun)
			},
			HELPFUL = {
				 13159, -- Aspect of the Pack
				172106, -- Aspect of the Fox
				 61648, -- Aspect of the Beast (Glyph)
				  1462, -- Beast Lore
				 54216, -- Master's Call
			},
			PET = {
				19577, -- Intimidation (talent)
			},
			PERSONAL = {
				   5118, -- Aspect of the Cheetah
				  35079, -- Misdirection
				  53257, -- Cobra Strikes
				 118922, -- Posthaste (talent)
				[ 51755] = "SURVIVAL", -- Camouflage
				[ 19263] = "SURVIVAL", -- Deterrence
				[  5384] = "SURVIVAL", -- Feign Death
				[ 19574] = "BURST", -- Bestial Wrath
				[ 82692] = "BURST", -- Focus Fire
				[  3045] = "BURST", -- Rapid Fire
				[ 82921] = "BURST", -- Bombardment
				[ 82726] = "POWER_REGEN", -- Fervor (talent)
			},
		},
	},
	AURA = {
		HARMFUL = {
			118253, -- Serpent Sting
			162534, -- Poisoned Ammo (Exotic Munitions talent)
			162546, -- Frozen Ammo (Exotic Munitions talent) -- TODO: add to snares in Common in ABA
		},
		PET = {
			136, -- Mend Pet
		},
		PERSONAL = {
			  6197, -- Eagle Eye
			  1515, -- Tame Beast
			 34720, -- Thrill of the Hunt (talent)
			162537, -- Poisoned Ammo (Exotic Munitions talent)
			162536, -- Incendiary Ammo (Exotic Munitions talent)
			162539, -- Frozen Ammo (Exotic Munitions talent)
			 83559, -- Black Ice (Glyph)
		},
	},
	RAIDBUFF = {
		ATK_POWER = {
			 19506, -- Trueshot Aura
		},
		BURST_HASTE = {
			 90355, -- Ancient Hysteria
			160452, -- Netherwinds
		},
		CRITICAL = {
			 24604, -- Furious Howl
			 90309, -- Terrifying Roar
			126373, -- Fearless Roar
			160052, -- Strength of the Pack
			160200, -- Lone Wolf: Ferocity of the Raptor
		},
		HASTE = {
			128432, -- Cackling Howl
			135678, -- Energizing Spores
			160074, -- Speed of the Swarm
			160203, -- Lone Wolf: Haste of the Hyena
		},
		MASTERY = {
			 93435, -- Roar of Courage
			128997, -- Spirit Beast Blessing
			160039, -- Keen Senses
			160073, -- Plainswalking
			160198, -- Lone Wolf: Grace of the Cat
		},
		MULTISTRIKE = {
			 24844, -- Breath of the Winds
			 34889, -- Spry Attacks
			 50519, -- Sonic Focus
			 58604, -- Double Bite
		},
		SPL_POWER = {
			128433, -- Serpent's Cunning
			160205, -- Lone Wolf: Wisdom of the Serpent
		},
		STAMINA = {
			 50256, -- Invigorating Roar
			160014, -- Sturdiness
			160199, -- Lone Wolf: Fortitude of the Bear
		},
		STATS = {
			159988, -- Bark of the Wild
			160017, -- Blessing of Kongs
			160206, -- Lone Wolf: Power of the Primates
		},
		VERSATILITY = {
			 35290, -- Indomitable
			 50518, -- Chitinous Armor
			160045, -- Defensive Quills
			173035, -- Grace
		},
		[ 57386] = "MULTISTRIKE VERSATILITY", -- Wild Strength
		[ 90363] = "STATS CRITICAL",          -- Embrace of the Shale Spider
		[ 90364] = "STAMINA SPL_POWER" ,      -- Qiraji Fortitude
		[126309] = "SPL_POWER CRITICAL",      -- Still Water
		[160003] = "STAMINA HASTE",           -- Savage Vigor
		[160077] = "STATS VERSATILITY",       -- Strength of the Earth
	},
	DISPEL = {
		[19801] = "HARMFUL", -- Tranquilizing Shot
	},
}, {
	-- Map aura to provider
	[118253] =   3044, -- Serpent Sting <= Arcane Shot
	[ 51755] =  51753, -- Camouflage
	[ 13812] = {
		13813, -- Explosive Trap
		82939, -- Explosive Trap (Trap Launcher)
	},
	[  3355] = {
		 1499, -- Freezing Trap
		60192, -- Freezing Trap (Trap Launcher)
	},
	[135299] = {
		13809, -- Ice Trap
		82941, -- Ice Trap (Trap Launcher)
	},
	[ 25809] = {
		34600, -- Snake Trap
		82948, -- Snake Trap (Trap Launcher) -- TODO: bugged on BETA currently
	},
	[ 83559] =  13809, -- Black Ice, Ice Trap
	[ 54216] =  53271, -- Master's Call
	[ 35079] =  34477, -- Misdirection
	[ 53257] =  53260, -- Cobra Strikes
	[ 82921] =  35110, -- Bombardment
	[118922] = 109215, -- Posthaste (talent)
	[117405] = 109248, -- Binding Shot (afflicted)
	[ 34720] = 109306, -- Thrill of the Hunt (talent)
	[120761] = 117050, -- Glaive Toss (talent) -- TODO: 2 ids same effect; add to snares in Common rules in ABA
	[121414] = 117050, -- Glaive Toss (talent) -- TODO: 2 ids same effect; add to snares in Common rules in ABA
	[162546] = 162534, -- Frozen Ammo <-- Exotic Munitions (talent) -- TODO: add to snares in Common in ABA -- FIXME: LibSpellbook says it's unknown when it isn't
	-- [136634] = 109298, -- Narrow Escape (talent) -- XXX: added through DRData (root)
	-- [117526] = 109248, -- Binding Shot (talent) -- XXX: added through DRData (stun)
	-- [ 24394] =  19577, -- Intimidation (talent) -- XXX: added through DRData (stun)
}, {
	-- Map aura to modified spell(s)
	[118253] = {
		3044, -- Arcane Shot
		2643, -- Multi-Shot
	},
	[ 53257] = 3044, -- Cobra Strikes --> Arcane Shot
	[ 82921] = 2643, -- Bombardment --> Multi-Shot
	[118922] =  781, -- Posthaste (talent) --> Disengage
	-- [136634] = 781, -- Narrow Escape (talent) --> Disengage -- XXX: added through DRData (root)
	[ 34720] = { -- Thrill of the Hunt (talent)
		19434, -- Aimed Shot
		 2643, -- Multi-Shot
		 3044, -- Arcane Shot
	},
	[162534] = 75, -- Poisoned Ammo --> Auto Shot
	[162546] = 75, -- Frozen Ammo --> Auto Shot -- TODO: add to snares in Common in ABA
})
