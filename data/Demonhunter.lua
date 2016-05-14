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
lib:__RegisterSpells("DEMONHUNTER", "70000", 1, {
    COOLDOWN = {
        AURA = {
            HELPFUL = {
                [209426] = "SURVIVAL", -- Darkness
            },
            HARMFUL = {
                 204598, -- Sigil of Flame
                 204843, -- Sigil of Chains
                 207407, -- Soul Carver (tank artifact)
                 217832, -- Imprison CROWD_CONTROL
                [204490] = "INTERRUPT", -- Sigil of Silence
                [207744] = "SURVIVAL", -- Fiery Brand
            },
            PERSONAL = {
                178740, -- Immolation Aura
                SURVIVAL = {
                    187827, -- Metamorphosis
                    203819, -- Demon Spikes
                    218256, -- Empower Wards
                },
            },
        },
    },
}, {
    -- map aura to provider
    [203819] = 203720, -- Demon Spikes
    [204490] = 202137, -- Sigil of Silence
    [204598] = 204596, -- Sigil of Flame
    [204843] = 202138, -- Sigil of Chains
    [207744] = 204021, -- Fiery Brand
    [209426] = 196718, -- Darkness
}, {

})
