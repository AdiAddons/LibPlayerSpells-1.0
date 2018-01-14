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
lib:__RegisterSpells("DEMONHUNTER", 70300, 2, {
	COOLDOWN = {
		 185123, -- Throw Glaive (Havoc)
		 189110, -- Infernal Strike
		 195072, -- Fel Rush
		 201467, -- Fury of the Illidari (Havoc artifact)
		 213241, -- Felblade
		 203704, -- Mana Break (PvP)
		 235903, -- Mana Rift (PvP)
		 236189, -- Demonic Infusion
		[183752] = "INTERRUPT", -- Consume Magic
		DISPEL = {
			MAGIC = {
				[205604] = "HELPFUL", -- Reverse Magic (PvP)
				[205625] = "PERSONAL", -- Cleansed by Magic (PvP) -- NOTE: Immolation Aura is then the dispeling spell
			},
		},
		AURA = {
			HELPFUL = {
				SURVIVAL = {
					207810, -- Nether Bond
					209426, -- Darkness
				},
			},
			HARMFUL = {
				 202443, -- Anguish (Havoc artifact)
				 204598, -- Sigil of Flame
				 206491, -- Nemesis
				 206649, -- Eye of Leotheras (PvP)
				 207407, -- Soul Carver (Vengeance artifact)
				 207690, -- Bloodlet
				 207771, -- Fiery Brand
				 211053, -- Fel Barrage
				 212818, -- Fiery Demise (Vengeance artifact)
				 213405, -- Master of the Glaive
				[204490] = "INTERRUPT", -- Sigil of Silence
				[206891] = "UNIQUE_AURA", -- Intimidated (PvP)
				[207744] = "SURVIVAL", -- Fiery Brand
				CROWD_CTRL = {
					[185245] = "TAUNT", -- Torment (taunt)
					[207685] = "DISORIENT", -- Sigil of Misery (disorient)
					INCAPACITATE = {
						217832, -- Imprison (incapacitate)
						221527, -- Imprison (incapacitate) (PvP)
					},
					STUN = {
						179057, -- Chaos Nova (stun)
						200166, -- Metamorphosis (Havoc) (stun)
						205630, -- Illidan's Grasp (PvP) (stun)
						208618, -- Illidan's Grasp (PvP) (stun)
						211881, -- Fel Eruption (stun)
						213491, -- Demonic Trample (stun) (PvP)
					},
				},
				SNARE = {
					198813, -- Vengeful Retreat (slow)
					204843, -- Sigil of Chains (slow)
					210003, -- Razor Spikes (slow)
					232538, -- Rain of Chaos (slow) (PvP)
				},
			},
			PERSONAL = {
				178740, -- Immolation Aura
				188499, -- Blade Dance
				188501, -- Spectral Sight
				203650, -- Prepared
				205629, -- Demonic Trample (PvP)
				206803, -- Rain from Above (PvP)
				208579, -- Nemesis (Demons)
				208605, -- Nemesis (Humanoids)
				208607, -- Nemesis (Aberrations)
				208608, -- Nemesis (Beasts)
				208610, -- Nemesis (Draginkin)
				208611, -- Nemesis (Elementals)
				208612, -- Nemesis (Giants)
				208613, -- Nemesis (Mechanicals)
				208614, -- Nemesis (Undead)
				208628, -- Momentum
				210155, -- Death Sweep
				218561, -- Siphoned Power (Vengeance artifact)
				227330, -- Gluttony
				BURST = {
					162264, -- Metamorphosis (Havoc)
					211048, -- Chaos Blades
				},
				SURVIVAL = {
					187827, -- Metamorphosis (Vengeance)
					196555, -- Netherwalk
					203819, -- Demon Spikes
					207811, -- Nether Bond
					212800, -- Blur
					218256, -- Empower Wards
					227225, -- Soul Barrier
				},
			},
		},
	},
	AURA = {
		[247456] = "HARMFUL", -- Frailty
		PERSONAL = {
			 131347, -- Glide
			 207693, -- Feast of Souls
			[212988] = "SURVIVAL", -- Painbringer (Vengeance artifact)
		},
	}
}, {
	-- map aura to provider
	[162264] = 191427, -- Metamorphosis (Havoc)
	[198813] = 198793, -- Vengeful Retreat (slow)
	[200166] = 191427, -- Metamorphosis (Havoc) (stun)
	[202443] = 201473, -- Anguish <- Anguish of the Deceiver (Havoc artifact)
	[203650] = 203551, -- Prepared
	[203819] = 203720, -- Demon Spikes
	[204490] = 202137, -- Sigil of Silence
	[204598] = 204596, -- Sigil of Flame
	[204843] = 202138, -- Sigil of Chains (slow)
	[206891] = 207029, -- Intimidated <- Tormentor (Vengeance Honor Talent)
	[207685] = 207684, -- Sigil of Misery (disorient)
	[207690] = 206473, -- Bloodlet
	[207693] = 207697, -- Feast of Souls
	[207744] = 204021, -- Fiery Brand
	[207771] = 207739, -- Fiery Brand <- Burning Alive
	[207811] = 207810, -- Nether Bond
	[208579] = 206491, -- Nemesis (Demons)
	[208605] = 206491, -- Nemesis (Humanoids)
	[208607] = 206491, -- Nemesis (Aberrations)
	[208608] = 206491, -- Nemesis (Beasts)
	[208610] = 206491, -- Nemesis (Draginkin)
	[208611] = 206491, -- Nemesis (Elementals)
	[208612] = 206491, -- Nemesis (Giants)
	[208613] = 206491, -- Nemesis (Mechanicals)
	[208614] = 206491, -- Nemesis (Undead)
	[208618] = 208173, -- Illidan's Grasp <- Illidan's Grasp: Throw (PvP) (stun)
	[208628] = 206476, -- Momentum
	[209426] = 196718, -- Darkness
	[210003] = 209400, -- Razor Spikes (slow)
	[210155] = 210152, -- Death Sweep
	[212800] = 198589, -- Blur
	[212818] = 212817, -- Fiery Demise (Vengeance artifact)
	[212988] = 207387, -- Painbringer (Vengeance artifact)
	[213405] = 203556, -- Master of the Glaive
	[218561] = 218910, -- Siphoned Power <- Siphon Power (Vengeance artifact)
	[213491] = 205629, -- Demonic Trample (stun) (PvP)
	[247456] = 247454, -- Frailty <- Spirit Bomb
	[221527] = 225596, -- Imprison (incapacitate) (PvP) <- Detainment
	[227330] = 227327, -- Gluttony
	[232538] = 205628, -- Rain of Chaos (slow) (PvP)
}, {
	-- map aura to modified spell(s)
	[202443] = 198013, -- Anguish (Havoc artifact) -> Eyebeam
	[203650] = 198793, -- Prepared -> Vengeful Retreat
	[207690] = 185123, -- Bloodlet -> Throw Glaive
	[207693] = 228477, -- Feast of Souls -> Soul Cleave
	[207771] = 204021, -- Fiery Brand
	[208628] = { -- Momentum
		195072, -- Fel Rush
		198793, -- Vengeful Retreat
	},
	[210003] = 6603, -- Razor Spikes (slow) -> Auto Attack
	[212818] = 204021, -- Fiery Demise (Vengeance artifact) -> Fiery Brand
	[212988] = 228477, -- Painbringer (Vengeance artifact) -> Soul Cleave
	[213405] = 185123, -- Master of the Glaive -> Throw Glaive
	[218561] = 218256, -- Siphoned Power (Vengeance artifact) -> Empower Wards
	[221527] = 221527, -- Imprison (incapacitate) (PvP)
	[227330] = 228477, -- Gluttony
	[232538] = 189110, -- Rain of Chaos (slow) (PvP) -> Infernal Strike
})
