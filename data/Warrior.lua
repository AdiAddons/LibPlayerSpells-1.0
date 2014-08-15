--[[
LibPlayerSpells-1.0 - Additional information about player spells.
(c) 2013 Adirelle (adirelle@gmail.com)

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
lib:__RegisterSpells("WARRIOR", "50400", 7, {
        POWER_REGEN = {
                2457,   -- Battle Stance
                2458,   -- Berserker Stance
                71,     -- Defensive Stance
                143268, -- Unbridled Wrath
        },
        COOLDOWN = {
                POWER_REGEN = {
                        HARMFUL = {
                                12294, -- Mortal Strike
                                6572,  -- Revenge
                                        DISPEL = {
                                                23922, -- Shield Slam (Glyphed)
                                        },
                        },
                },
                INTERRUPT = {
                        6552,   -- Pummel
                        102060, -- Disrupting Shout
                },
                AURA = {
                        PERSONAL = {
                                107574, -- Avatar
                                18499,  -- Berserker Rage
                                46924,  -- Bladestorm
                                12292,  -- Bloodbath (the buff)
                                125565, -- Demo Shout
                                118038, -- Die By The Sword
                                55694,  -- Enraged Regeneration
                                12975,  -- Last Stand
                                114192, -- Mocking Banner
                                1719,   -- Recklessness
                                -- 145672, -- Riposte
                                122286, -- Savage Defense (Symbiosis - Prot)
                                132404, -- Shield Block
                                871,    -- Shield Wall
                                23920,  -- Spell Reflect
                                12328,  -- Sweeping Strikes
                                -- 50227,  -- Sword and Board
                                -- 93098,  -- Vengeance
                                34428,  -- Victory Rush (Melee Strike)
                        },
                        HELPFUL = {
                                6673,   -- Battle Shout
                                469,    -- Commanding Shout
                                3411,   -- Intervene
                                114028, -- Mass Spell Reflection
                                97463,  -- Rallying Cry
                                114029, -- Safeguard
                                114206, -- Skull Banner
                                122294, -- Stampeding Shout (Symbiosis - DPS)
                                114030, -- Vigilance
                        },
                        HARMFUL = {
                                113344, -- Bloodbath (the dot)
                                86346,  -- Colossus Smash
                                -- 115767  -- Deep Wounds
                                114205, -- Demo Banner
                                64382,  -- Shattering Throw
                                18498,  -- Silence (Glyph of Gag Order)
                                132168, -- Shockwave
                                132169, -- Stormbolt
                                355,    -- Taunt
                                105771, -- Warbringer Root
                                137637, -- Warbringer Slow
                                -- 113746, -- Weakened Armor
                                -- 115798, -- Weakened Blows
                        },
                },
        },
        AURA = {
                PERSONAL = {
                        12880,  -- Enrage
                        112048, -- Shield Barrier
                        139958, -- Sudden Execute
                        122510, -- Ultimatum
                        32216,  -- Victory Rush Available
                },
        },
        RAIDBUFF = {
                -- [6673] = 'ATK_POWER', -- Battle Shout
                -- [469] = 'STAMINA',    -- Commanding Shout
        },
}, {
    -- Map aura to provider
        [113344] = 12292,             -- Bloodbath (dot tracking)
        [114205] = 114203,            -- Demo Banner
        [125565] = 1160,              -- Demo Shout Self Buff
        [12880] = { 18499, 55694, },  -- Enrage status on Berserker Rage and Enraged Regeneration
        [18498] = { 57755, 6552, },   -- Heroic Throw, Pummel (Gag Order)
        [97463] = 97462,              -- Rallying Cry
        [132404] = 2565,              -- Shield Block
        -- [50227] = 23922            -- Shield Slam
        [114206] = 114207,            -- Skull Banner
        [132168] = 46968,             -- Shockwave Stun
        [132169] = 107570,            -- Stormbolt Stun
        [139958] = 7384,              -- Sudden Execute
        [122510] = 78,                -- Ultimatum
        [32216] = { 34428, 103840, }, -- Victory Rush, Impending Victory Available
        -- [137637] = 100,            -- Warbringer Slow (Charge)
        [105771] = 100,               -- Warbringer Root (Charge)
}, {
    -- Map aura to modified spell(s)
})
