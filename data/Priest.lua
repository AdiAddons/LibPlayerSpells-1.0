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
      2050, -- Holy Word: Serenity
     32375, -- Mass Dispel
     34433, -- Shadowfiend
     34861, -- Holy Word: Sanctify
     47540, -- Penance
     73325, -- Leap of Faith
     64843, -- Divine Hymn
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
      },
      HELPFUL = {
            17, -- Power Word: Shield
         33076, -- Prayer of Mending
         47788, -- Guardian Spirit
         62618, -- Power Word: Barrier
        SURVIVAL = {
           33206, -- Pain Suppression
        },
      },
      HARMFUL = {
         14914, -- Holy Fire
        CROWD_CTL = {
            8122, -- Psychic Scream (disorient)
           88625, -- Holy Word: Chastise (incapacitate)       
        },
      },
    },
  },
  AURA = {
    PERSONAL = {
       45242, -- Focused Will
      186478, -- Reparation
    },
    HELPFUL = {
         139, -- Renew
        2096, -- Mind Vision
       41635, -- Prayer of Mending
       64844, -- Divine Hymn
       77489, -- Echo of Light
       81782, -- Power Word: Barrier
      186367, -- Prayer's Reprise
      194384, -- Atonement
      UNIQUE_AURA = {
        111759, -- Levitate
      },
    },
    HARMFUL = {
         589, -- Shadow Word: Pain
      187464, -- Shadow Mend
      CROWD_CTL = {
           605, -- Mind Control (incapacitate)
          9484, -- Shackle Undead (incapacitate)
        200196, -- Holy Word: Chastise (incapacitate)
      },
    },
  },
}, 
{ -- map aura to provider(s)
  -- aura = provider
  [ 41635] =  33076, -- Prayer of Mending
  [ 45242] =  45243, -- Focused Will
  [ 64844] =  64843, -- Divine Hymn
  [ 77489] =  77485, -- Echo of Light
  [ 81782] =  62618, -- Power Word: Barrier
  [111759] =   1706, -- Levitate
  [186478] =  47540, -- Reparation <- Penance
  [186367] =  33076, -- Prayer's Reprise <- Prayer of Mending
  [187464] = 186263, -- Shadow Mend
  [194384] =  81749, -- Atonement
  [200196] =  88625, -- Holy Word: Chastise
},
{ -- map aura(s) to modified spell(s)
  -- aura = spells
  [ 77489] = { -- Echo of Light
       139, -- Renew
       596, -- Prayer of Healing
      2050, -- Holy Word: Serenity
      2060, -- Heal
      2061, -- Flash Heal
     34861, -- Holy Word: Sanctify
     64843, -- Divine Hymn
  },
  [194384] = { -- Atonement
    186263, -- Shadow Mend
    194509, -- Power Word: Radiance
    200829, -- Plea
  },
})
