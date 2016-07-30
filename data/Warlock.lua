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
lib:__RegisterSpells("WARLOCK", 70000, 2, {
    COOLDOWN = {
        AURA = {
            HARMFUL = {
                 48181, -- Haunt
                205179, -- Phantom Singularity
                
            },
            PERSONAL = {
                104773, -- Unending Resolve
                108416, -- Dark Pact
                196098, -- Soul Harvest
            },
            CROWD_CTL = {
                 30283, -- Shadowfury
            }
        }
    },
    AURA = {
        HELPFUL = {
              5697, -- Unending Breath
        },
        HARMFUL = {
               689, -- Drain Life
               980, -- Agony
             17877, -- Shadowburn
             27243, -- Seed of Corruption
             30108, -- Unstable Affliction
             63106, -- Siphon Life
             80240, -- Havoc
            146739, -- Corruption
            157736, -- Immolate
            196414, -- Eradication
            198590, -- Drain Soul
            CROWD_CTL = {
                   710, -- Banish
                  5782, -- Fear
            }
        },
        PERSONAL = {
            111400, -- Burning Rush
            196104, -- Mana Tap
        }
    }
}, {
    -- map aura to provider(s)
    [146739] =    172, -- Corruption (Aura) -> Corruption (Spell)
    [157736] =    348, -- Immolate (Aura) -> Immolate (Spell)
    [196414] = 116858, -- Eradication -> Chaos Bolt
})
