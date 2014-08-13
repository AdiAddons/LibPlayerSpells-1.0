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
lib:__RegisterSpells("WARRIOR", "50400", 5, {
    COOLDOWN = {
        INTERRUPT = {
            6552,   -- Pummel
            102060, -- Disrupting Shout
        },
        AURA = {
            PERSONAL = {
                112048, -- Shield Barrier
                132404, -- Shield Block
                12880,  -- Enrage
                18499,  -- Berserker Rage
                55694,  -- Enraged Regeneration
                871,    -- Shield Wall
                12975,  -- Last Stand
                125565, -- Demo Shout
                114192, -- Mocking Banner
                23920,  -- Spell Reflect
                114206, -- Skull Banner
                32216,  -- Victory Rush Countdown
                -- 469,    -- Commanding Shout
                -- 6673,   -- Battle Shout
                118038, -- Die By The Sword
                12328,  -- Sweeping Strikes
                46924,  -- Bladestorm
                12292,  -- Bloodbath (the buff)
                1719,   -- Recklessness
                107574, -- Avatar
                139958, -- Sudden Execute
                122286, -- Savage Defense (Symbiosis - Prot)
            },
            HELPFUL = {
                97463,  -- Rallying Cry
                114028, -- Mass Spell Reflection
                114030, -- Vigilance
                3411,   -- Intervene
                114029, -- Safeguard
                122294, -- Stampeding Shout (Symbiosis - DPS)
            },
            HARMFUL = {
                132169, -- Stormbolt
                132168, -- Shockwave
                114205, -- Demo Banner
                355,    -- Taunt
                18498,  -- Silence (Glyph of Gag Order)
                64382,  -- Shattering Throw
                86346,  -- Colossus Smash
                113344, -- Bloodbath (the dot)
                137637, -- Warbringer Slow
                105771, -- Warbringer Root
            },
        },
    },
    RAIDBUFF = {
        [469] = 'STAMINA',    -- Commanding Shout
        [6673] = 'ATK_POWER', -- Battle Shout
    },
}, {
    -- Map aura to provider
    [97463] = 97462,              -- Rallying Cry
    [132404] = 2565,              -- Shield Block
    [12880] = { 18499, 55694, },  -- Show Enrage status on Berserker Rage and Enraged Regeneration
    [125565] = 1160,              -- Demo Shout Self Buff
    [132168] = 46968,             -- Shockwave Stun
    [132169] = 107570,            -- Stormbolt Stun
    [32216] = { 34428, 103840, }, -- Victory Rush, Impending Victory Countdown
    [18498] = { 57755, 6552, },   -- Heroic Throw, Pummel (Gag Order)
    [114205] = 114203,            -- Demo Banner
    [114206] = 114207,            -- Skull Banner
    [113344] = 12292,             -- Bloodbath (dot tracking)
    -- [137637] = 100,            -- Warbringer Slow (Charge)
    [105771] = 100,               -- Warbringer Root (Charge)
}, {
    -- Map aura to modified spell(s)
})
