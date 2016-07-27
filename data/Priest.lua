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
lib:__RegisterSpells("PRIEST", 70000, 1, {
  COOLDOWN = {
     32375, -- Mass Dispel
     34433, -- Shadowfiend
     47540, -- Penance
     62618, -- Power Word: Barrier
     73325, -- Leap of Faith
    DISPEL = {
      [527] = "HELPFUL", -- Purify
      [528] = "HARMFUL", -- Dispel Magic
    },
    AURA = {
      PERSONAL = {
        SURVIVAL = {
             586, -- Fade
        },
        BURST = {
           47536, -- Rapture
        },
        186478, -- Reparation
      },
      HELPFUL = {
            17,   -- Power Word: Shield
         81782,   -- Power Word: Barrier
        SURVIVAL = {
           33206,   -- Pain Suppression
        },
      },
      HARMFUL = {
        CROWD_CTL = {
            8122,   -- Psychic Scream (disorient)        
        },
      },
    },
  },
  AURA = {
    HELPFUL = {
      194384, -- Atonement
        2096, -- Mind Vision
      UNIQUE_AURA = {
        111759, -- Levitate
      },
    },
    HARMFUL = {
         589, -- Shadow Word: Pain
      187464, -- Shadow Mend
      CROWD_CTL = {
          9484, -- Shackle Undead (incapacitate)
           605, -- Mind Control (incapacitate)
      },
    },
  },
}, 
{ -- map aura to provider(s)
  [194384] =  81749, -- Atonement
  [ 81782] =  62618, -- Power Word: Barrier
  [111759] =   1706, -- Levitate
  [186478] =  47540, -- Reparation <- Penance
  [187464] = 186263, -- Shadow Mend
},
{ -- map aura(s) to modified spell(s)
  [194384] = { -- Atonement
        200829, -- Plea
        186263, -- Shadow Mend
        194509, -- Power Word: Radiance
  },
})
