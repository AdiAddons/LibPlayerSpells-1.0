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
lib:__RegisterSpells("MONK", 70000, 1, {
	COOLDOWN = {
		 109132, -- Roll
		 115098, -- Chi Wave
		 115399, -- Black Ox Brew
		 119582, -- Purifying Brew
		 119996, -- Transcendance: Transfer
		 122281, -- Healing Elixir
		 123986, -- Chi Burst
		[115176] = "SURVIVAL", -- Zen Meditation
		[116705] = "INTERRUPT", -- Spear Hand Strike
		[218164] = "HELPFUL DISPEL", -- Detox (BM and WW)
		AURA = {
			HELPFUL = {
				116841, -- Tiger's Lust
			},
			HARMFUL = {
				 115080, -- Touch of Death
				 --115804, -- Mortal Wounds FIXME: see LibPlayerSpells-1.0#83
				 116189, -- Provoke (taunt)
				 118635, -- Provoke
				 119381, -- Leg Sweep (stun)
				 121253, -- Keg Smash (slow)
				 122470, -- Touch of Karma
				 123586, -- Flying Serpent Kick (slow)
				 123725, -- Breath of Fire -- TODO: check without artifact
				 124280, -- Touch of Karma (dmg dot)
				 196727, -- Provoke
				 196733, -- Special Delivery (slow)
				 213063, -- Dark Side of the Moon (BM artifact)
				 214326, -- Exploding Keg (BM artifact)
				[115078] = "CROWD_CTL", -- Paralysis (Incapacitate)
			},
			PERSONAL = {
				101643, -- Transcendance
				116844, -- Ring of Peace
				116847, -- Rushing Jade Wind
				119085, -- Chi Torpedo
				125174, -- Touch of Karma
				137639, -- Storm, Earth and Fire
				196739, -- Elusive Dance
				213177, -- Swift as a Coursing River (BM artifact)
				214373, -- Brew-Stache (BM artifact)
				228563, -- Blackout Combo
				SURVIVAL = {
					120954, -- Fortifying Brew
					122278, -- Dampen Harm
					122783, -- Diffuse Magic
					213341, -- Fortification (BM artifact)
					215479, -- Ironskin Brew
				},
			},
		},
	},
	AURA = {
		HARMFUL = {
			116095, -- Disable (slow)
			116706, -- Disable (root)
			117952, -- Crackling Jade Lightning
			196608, -- Eye of the Tiger
			228287, -- Mark of the Crane
		},
		PERSONAL = {
			101546, -- Spinning Crane Kick
			116768, -- Blackout Kick!
		},
	},
}, {
	-- map aura to provider(s)
	-- [115804] = 107428, -- Mortal Wounds <- Rising Sun Kick FIXME: see LibPlayerSpells-1.0#83
	[116189] = 115546, -- Provoke (taunt)
	[116706] = 116095, -- Disable (root)
	[116768] = 100780, -- Blackout Kick! <- Tiger Palm
	[118635] = 115315, -- Provoke <- Summon Black Ox Statue
	[119085] = 115008, -- Chi Torpedo
	[120954] = 115203, -- Fortifying Brew
	[123586] = 101545, -- Flying Serpent Kick (slow)
	[123725] = 115181, -- Breath of Fire
	[124280] = 122470, -- Touch of Karma (dmg dot)
	[125174] = 122470, -- Touch of Karma
	[196608] = 196607, -- Eye of the Tiger
	[196727] = 132578, -- Provoke <- Invoke Niuzao, the Black Ox
	[196733] = 196730, -- Special Delivery (slow)
	[196739] = 196738, -- Elusive Dance
	[213063] = 227689, -- Dark Side of the Moon (BM artifact)
	[213341] = 213340, -- Fortification (BM artifact)
	[213177] = 213161, -- Swift as a Coursing River (BM artifact)
	[214373] = 214372, -- Brew-Stache (BM artifact)
	[215479] = 115308, -- Ironskin Brew
	[228287] = { -- Mark of the Crane
		100780, -- Tiger Palm
		100784, -- Blacout Kick
		107428, -- Rising Sun Kick
	},
	[228563] = 196736, -- Blackout Combo
}, {
	-- map aura to modified spell(s)
	[116768] = 100784, -- Blackout Kick! -> Blackout Kick
	[118635] = 115546, -- Provoke
	[137639] = 221771, -- Storm, Earth and Fire -> Storm, Earth and Fire: Fixate
	[196608] = 100780, -- Eye of the Tiger
	[196733] = { -- Special Delivery (slow)
		115308, -- Ironskin Brew
		119582, -- Purifying Brew
	},
	[196739] = 119582, -- Elusive Dance -> Purifying Brew
	[213063] = 205523, -- Dark Side of the Moon (BM artifact) -> Blackout Strike
	[213177] = { -- Swift as a Coursing River (BM artifact)
		115203, -- Fortifying Brew
		115308, -- Ironskin Brew
		119582, -- Purifying Brew
	},
	[213341] = 115203, -- Fortification (BM artifact) -> Fortifying Brew
	[214373] = { -- Brew-Stache (BM artifact)
		115308, -- Ironskin Brew
		119582, -- Purifying Brew
	},
	[228287] = 101546, -- Mark of the Crane -> Spinning Crane Kick
	[228563] = { -- Blackout Combo
		100780, -- Tiger Palm
		115181, -- Beath of Fire
		115308, -- Ironskin Brew
		119582, -- Purifying Brew
		121253, -- Keg Smash
		205523, -- Blacout Strike
	},
})
