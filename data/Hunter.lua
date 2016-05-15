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
lib:__RegisterSpells("HUNTER", "70000", 1, {
    COOLDOWN = {
            781, -- Disengage
           1543, -- Flare
          34026, -- Kill Command
         109304, -- Exhilaration
        [147362] = "INTERRUPT", -- Counter Shot
        AURA = {
            HARMFUL = {
                5116, -- Concussive Shot
            },
            PERSONAL = {
                   5384, -- Feign Death
                  35079, -- Misdirection
                 186257, -- Aspect of the Cheetah (90%)
                 186258, -- Aspect of the Cheetah (30%)
                 193530, -- Aspect of the Wild
                 120694, -- Dire Beast
                [ 19574] = "BURST", -- Bestial Wrath
                [186265] = "SURVIVAL", -- Aspect of the Turtle

            },
            PET = {
                   136, -- Mend Pet
                118455, -- Beast Cleave
            },
        },
    },
    AURA = {
        [1462] = "HARMFUL", -- Beast Lore (NOTE: HELPFUL on player controlled pets, HARMFUL else)
        [1515] = "HARMFUL", -- Tame Beast
        [6197] = "PERSONAL", -- Eagle Eye
    },
}, {
    -- map aura to provider(s)
    [ 35079] = 34477, -- Misdirection
    [118455] = 2643, -- Beast Cleave
    [120694] = 120679, -- Dire Beast
    [186258] = 186257, -- Aspect of the Cheetah
}, {
    -- map aura to modified spell(s)
})
