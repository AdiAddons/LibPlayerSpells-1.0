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
lib:__RegisterSpells("DEMONHUNTER", 80000, 1, {
	COOLDOWN = {
		 189110, -- Infernal Strike (Vengeance)
		[183752] = 'INTERRUPT', -- Consume Magic (Vengeance)
		AURA = {
			HARMFUL = {
				204598, -- Sigil of Flame (Vengeance)
				207744, -- Fiery Brand (Vengeance)
				[204490] = 'INTERRUPT', -- Sigil of Silence (Vengeance)
				CROWD_CTRL = {
					[185245] = 'TAUNT', -- Torment (Vengeance)
					[217832] = 'INCAPACITATE', -- Imprison
					DISORIENT = {
						207685, -- Sigil of Misery (Vengeance)
					},
				},
			},
			PERSONAL = {
				188501, -- Spectral Sight (Vengeance)
				POWER_REGEN = {
					178740, -- Immolation Aura (Vengeance)
				},
				SURVIVAL = {
					187827, -- Metamorphosis (Vengeance)
					203819, -- Demon Spikes (Vengeance)
				},
			},
		},
	},
	POWER_REGEN = {
		203782, -- Shear (Vengeance)
	}
}, {
	-- map aura to provider(s)
	[185245] = 198589, -- Torment (Vengeance)
	[187827] = 191427, -- Metamorphosis (Vengeance)
	[203819] = 203720, -- Demon Spikes (Vengeance)
	[204490] = 202137, -- Sigil of Silence (Vengeange)
	[204598] = 188499, -- Sigil of Flame (Vengeance)
	[207685] = 207684, -- Sigil of Misery (Vengeance)
	[207744] = 204021, -- Fiery Brand (Vengeance)
}, {
	-- map aura to modified spell(s)
	[185245] = 185245, -- Torment (Vengeance)
	[187827] = 187827, -- Metamorphosis (Vengeance)
	[204598] = 204596, -- Sigil of Flame (Vengeance)
})
