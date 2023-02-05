--[[
LibPlayerSpells-1.0 - Additional information about player spells.
(c) 2023 Rainrider (rainrider.wow@gmail.com)

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
if not lib then
	return
end
lib:__RegisterSpells('EVOKER', 100000, 1, {
	COOLDOWN = {
		[351338] = 'INTERRUPT', -- Quell
		AURA = {
			HARMFUL = {
				357209, -- Fire Breath
				CROWD_CTRL = {
					[355689] = 'ROOT', -- Landslide (talent)
				},
			},
			HELPFUL = {
				[381748] = 'RAIDBUFF', -- Blessing of the Bronze
			},
			PERSONAL = {
				357210, -- Deep Breath
				358267, -- Hover
				370553, -- Tip the Scales (talent)
				370901, -- Leaping Flames (talent)
				371807, -- Recall
				BURST = {
					375087, -- Dragonrage (devastation talent)
				},
				SURVIVAL = {
					363916, -- Obsidian Scales (talent)
					374348, -- Renewing Blaze (talent)
				},
			},
		},
	},
	AURA = {
		HARMFUL = {
			356995, -- Disintegrate
		},
	},
	DISPEL = {
		COOLDOWN = {
			HELPFUL = {
				[360823] = 'MAGIC POISON', -- Naturalize
				[365585] = 'POISON', -- Expunge (talent)
				[374251] = 'CURSE DISEASE POISON', -- Cauterizing Flame (talent) -- TODO: Bleed
			},
		},
	},
}, {
	-- map aura to provider(s)
	[357209] = 382266, -- Fire Breath
	[355689] = 358385, -- Landslide
	[370901] = 369939, -- Leaping Flames (talent)
	[371807] = 357210, -- Recall
	[381748] = 364342, -- Blessing of the Bronze
}, {
	-- map aura to modified spell(s)
	[370901] = 361469, -- Leaping Flames (talent) -> Living Flame
})
