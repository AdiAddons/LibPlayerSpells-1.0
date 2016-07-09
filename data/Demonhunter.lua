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
lib:__RegisterSpells("DEMONHUNTER", 70000, 2, {
	COOLDOWN = {
		 185123, -- Throw Glaive (Havoc)
		 189110, -- Infernal Strike
		 195072, -- Fel Rush
		 201467, -- Fury of the Illidari (Havon artifact)
		 213241, -- Felblade
		[183752] = "INTERRUPT", -- Consume Magic
		AURA = {
			HELPFUL = {
				[209426] = "SURVIVAL", -- Darkness
			},
			HARMFUL = {
				 179057, -- Chaos Nova
				 198813, -- Vengeful Retreat (slow)
				 202443, -- Anguish (Havoc artifact)
				 204598, -- Sigil of Flame
				 204843, -- Sigil of Chains
				 207407, -- Soul Carver (Vengeance artifact)
				 200166, -- Metamorphosis (Havoc) (stun)
				 206491, -- Nemesis
				 207690, -- Bloodlet
				 211053, -- Fel Barrage
				 211881, -- Fel Eruption
				 213405, -- Master of the Glaive
				[204490] = "INTERRUPT", -- Sigil of Silence
				[207744] = "SURVIVAL", -- Fiery Brand
				[217832] = "CROWD_CTL", -- Imprison
			},
			PERSONAL = {
				178740, -- Immolation Aura
				188499, -- Blade Dance
				188501, -- Spectral Sight
				210155, -- Death Sweep
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
				BURST = {
					162264, -- Metamorphosis (Havoc)
					211048, -- Chaos Blades
				},
				SURVIVAL = {
					187827, -- Metamorphosis (Vengeance)
					196555, -- Netherwalk
					203819, -- Demon Spikes
					212800, -- Blur
					218256, -- Empower Wards
				},
			},
		},
	},
	AURA = {
		PERSONAL = {
			131347, -- Glide
		},
	}
}, {
	-- map aura to provider
	[162264] = 191427, -- Metamorphosis (Havoc)
	[198813] = 198793, -- Vengeful Retreat (slow)
	[200166] = 191427, -- Metamorphosis (Havoc) (stun)
	[202443] = 201473, -- Anguish <- Anguish of the Deceiver (Havoc artifact)
	[203819] = 203720, -- Demon Spikes
	[204490] = 202137, -- Sigil of Silence
	[204598] = 204596, -- Sigil of Flame
	[204843] = 202138, -- Sigil of Chains
	[207690] = 206473, -- Bloodlet
	[207744] = 204021, -- Fiery Brand
	[208579] = 206491, -- Nemesis (Demons)
	[208605] = 206491, -- Nemesis (Humanoids)
	[208607] = 206491, -- Nemesis (Aberrations)
	[208608] = 206491, -- Nemesis (Beasts)
	[208610] = 206491, -- Nemesis (Draginkin)
	[208611] = 206491, -- Nemesis (Elementals)
	[208612] = 206491, -- Nemesis (Giants)
	[208613] = 206491, -- Nemesis (Mechanicals)
	[208614] = 206491, -- Nemesis (Undead)
	[208628] = 206476, -- Momentum
	[209426] = 196718, -- Darkness
	[210155] = 210152, -- Death Sweep
	[212800] = {
		198589, -- Blur
		205411, -- Desperate Instincts
	},
	[213405] = 203556, -- Master of the Glaive
}, {
	-- map aura to modified spell(s)
	[202443] = 198013, -- Anguish (Havoc artifact) -> Eyebeam
	[207690] = 185123, -- Bloodlet -> Throw Glaive
	[208628] = { -- Momentum
		195072, -- Fel Rush
		198793, -- Vengeful Retreat
	},
	[213405] = 185123, -- Master of the Glaive -> Throw Glaive
})
