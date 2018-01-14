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
lib:__RegisterSpells("MONK", 70300, 1, {
	COOLDOWN = {
		 109132, -- Roll
		 115098, -- Chi Wave
		 115288, -- Energizing Elixir
		 115310, -- Revival
		 115399, -- Black Ox Brew
		 116844, -- Ring of Peace
		 119582, -- Purifying Brew
		 119996, -- Transcendance: Transfer
		 122281, -- Healing Elixir
		 123904, -- Invoke Xuen, the White Tiger
		 123986, -- Chi Burst
		 124081, -- Zen Pulse
		 152175, -- Whirling Dragon Punch
		 198664, -- Invoke Chi-Ji, the Red Crane
		[115176] = "SURVIVAL", -- Zen Meditation
		[116705] = "INTERRUPT", -- Spear Hand Strike
		DISPEL = {
			HELPFUL = {
				[115450] = "DISEASE MAGIC POISON", -- Detox (MW)
				[205234] = "MAGIC", -- Healing Sphere (PvP)
				[218164] = "DISEASE POISON", -- Detox (BM and WW)
			},
		},
		AURA = {
			HELPFUL = {
				116841, -- Tiger's Lust
				116849, -- Life Cocoon
				119611, -- Renewing Mist
				191840, -- Essence Font
				199668, -- Blessings of Yu'lon (MW artifact)
			},
			HARMFUL = {
				 115080, -- Touch of Death
				 115804, -- Mortal Wounds
				 118635, -- Provoke (through Black Ox Statue) (taunt)
				 122470, -- Touch of Karma
				 123725, -- Breath of Fire -- TODO: check without artifact
				 124280, -- Touch of Karma (dmg dot)
				 196727, -- Provoke
				 213063, -- Dark Side of the Moon (BM artifact)
				 214326, -- Exploding Keg (BM artifact)
				[206891] = "UNIQUE_AURA", -- Intimidated (PvP)
				CROWD_CTRL = {
					[115078] = "INCAPACITATE", -- Paralysis (Incapacitate)
					[116189] = "TAUNT", -- Provoke (taunt)
					DISORIENT = {
						198909, -- Song of Chi-Ji (disorient)
						202274, -- Incendiary Brew (pvp)
					},
					STUN = {
						119381, -- Leg Sweep (stun)
						232055, -- Fists of Fury (stun) (pvp)
					},
				},
				SNARE = {
					121253, -- Keg Smash (slow)
					123586, -- Flying Serpent Kick (slow)
					196733, -- Special Delivery (slow)
					199387, -- Spirit Tether (MW artifact) (slow)
					205320, -- Strike of the Windlord (WW artifact) (slow)
				},
			},
			PERSONAL = {
				 101643, -- Transcendance
				 116680, -- Thunder Focus Tea
				 116847, -- Rushing Jade Wind
				 119085, -- Chi Torpedo
				 125174, -- Touch of Karma
				 137639, -- Storm, Earth and Fire
				 195381, -- Healing Winds (WW artifact)
				 195630, -- Elusive Brawler
				 196725, -- Refreshing Jade Wind
				 196739, -- Elusive Dance
				 197206, -- Uplifting Trance
				 197908, -- Mana Tea
				 199407, -- Light on Your Feet (MW artifact)
				 202248, -- Guided Meditation (pvp)
				 213177, -- Swift as a Coursing River (BM artifact)
				 214373, -- Brew-Stache (BM artifact)
				 228563, -- Blackout Combo
				 242387, -- Thunderfist (WW artifact)
				[152173] = "BURST", -- Serenity
				SURVIVAL = {
					115176, -- Zen Meditation
					120954, -- Fortifying Brew (Brewmaster)
					122278, -- Dampen Harm
					122783, -- Diffuse Magic
					213341, -- Fortification (BM artifact)
					215479, -- Ironskin Brew
					243435, -- Fortifying Brew (Mistweaver)
				},
			},
		},
	},
	AURA = {
		HELPFUL = {
			124682, -- Enveloping Mist
			198533, -- Soothing Mist
			216915, -- Fortune Turned (pvp)
			240672, -- Master of Combinations (WW artifact)
		},
		HARMFUL = {
			 117952, -- Crackling Jade Lightning
			 196608, -- Eye of the Tiger -- NOTE: the buff id for the HoT is the same
			 228287, -- Mark of the Crane
			[116095] = "SNARE", -- Disable (slow)
			CROWD_CTRL = {
				[116706] = "ROOT", -- Disable (root)
				[120086] = "STUN", -- Fists of Fury (stun)
			},
		},
		PERSONAL = {
			 101546, -- Spinning Crane Kick
			 116768, -- Blackout Kick!
			 195321, -- Transfer of Power (WW artifact)
			 197916, -- Lifecycles (Vivify)
			 197919, -- Lifecycles (Enveloping Mist)
			 202090, -- Teachings of the Monastery (MW mastery)
			[233766] = "INVERT_AURA", -- Control the Mists (pvp)
		},
	},
}, {
	-- map aura to provider(s)
	[115804] = 107428, -- Mortal Wounds <- Rising Sun Kick
	[116189] = 115546, -- Provoke (taunt)
	[116706] = 116095, -- Disable (root)
	[116768] = 100780, -- Blackout Kick! <- Tiger Palm
	[118635] = 115315, -- Provoke (taunt) <- Summon Black Ox Statue
	[119085] = 115008, -- Chi Torpedo
	[119611] = 115151, -- Renewing Mist
	[120086] = 205003, -- Fists of Fury (stun) <- Heavy-Handed Strikes (pvp)
	[120954] = 115203, -- Fortifying Brew (Brewmaster)
	[123586] = 101545, -- Flying Serpent Kick (slow)
	[123725] = 115181, -- Breath of Fire
	[124280] = 122470, -- Touch of Karma (dmg dot)
	[125174] = 122470, -- Touch of Karma
	[191840] = 191837, -- Essence Font
	[195321] = 195300, -- Transfer of Power (WW artifact) <- Transfer the Power
	[195381] = 195380, -- Healing Winds (WW artifact)
	[195630] = 117906, -- Elusive Brawler <- Mastery: Elusive Brawler
	[196608] = 196607, -- Eye of the Tiger
	[196727] = 132578, -- Provoke <- Invoke Niuzao, the Black Ox
	[196733] = 196730, -- Special Delivery (slow)
	[196739] = 196738, -- Elusive Dance
	[197206] = 115151, -- Uplifting Trance <- Renewing Mist
	[197916] = 197915, -- Lifecycles (Vivify) <- Lifecycles
	[197919] = 197915, -- Lifecycles (Enveloping Mist) <- Lifecycles
	[198533] = 115313, -- Soothing Mist <- Summon Jade Serpent Statue
	[198909] = 198898, -- Song of Chi-Ji (Disorient)
	[199387] = 199384, -- Spirit Tether (MW artifact) (slow)
	[199407] = 199401, -- Light on Your Feet (MW artifact)
	[199668] = 199665, -- Blessings of Yu'lon (MW artifact)
	[202090] = 116645, -- Teachings of the Monastery (MW mastery)
	[202248] = 202200, -- Guided Meditation (pvp)
	[202274] = 202272, -- Incendiary Brew (pvp) <- Incendiary Breath (pvp)
	[206891] = 207025, -- Intimidated <- Admonishment (BM Honor Talent)
	[213063] = 227689, -- Dark Side of the Moon (BM artifact)
	[213341] = 213340, -- Fortification (BM artifact)
	[213177] = 213161, -- Swift as a Coursing River (BM artifact)
	[214373] = 214372, -- Brew-Stache (BM artifact)
	[215479] = 115308, -- Ironskin Brew
	[216915] = 216913, -- Fortune Turned (pvp)
	[228287] = { -- Mark of the Crane
		100780, -- Tiger Palm (provider)
		100784, -- Blackout Kick (provider)
		107428, -- Rising Sun Kick (provider)
		116847, -- Rushing Jade Wind (provider)
	},
	[228563] = 196736, -- Blackout Combo
	[232055] = 205003, -- Fists of Fury (stun) (pvp) <- Heavy-Handed Strikes (pvp)
	[233766] = 233765, -- Control the Mists (pvp)
	[240672] = 238095, -- Master of Combinations (WW artifact)
	[242387] = 238131, -- Thunderfist (WW artifact)
}, {
	-- map aura to modified spell(s)
	[116768] = 100784, -- Blackout Kick! -> Blackout Kick
	[118635] = 115546, -- Provoke (through Black Ox Statue) (taunt)
	[137639] = 221771, -- Storm, Earth and Fire -> Storm, Earth and Fire: Fixate
	[195321] = { -- Transfer of Power (WW artifact)
		100784, -- Blackout Kick (provider)
		107428, -- Rising Sun Kick (provider)
		113656, -- Fists of Fury (consumer)
	},
	[195381] = 119996, -- Healing Winds (WW artifact) -> Transcendance: Transfer
	[195630] = { -- Elusive Brawler
		115181, -- Breath of Fire
		205523, -- Blackout Kick (BM)
	},
	[196608] = 100780, -- Eye of the Tiger
	[196733] = { -- Special Delivery (slow)
		115308, -- Ironskin Brew
		119582, -- Purifying Brew
	},
	[196739] = 119582, -- Elusive Dance -> Purifying Brew
	[197206] = 116670, -- Uplifting Trance -> Vivify
	[197916] = 116670, -- Lifecycles (Vivify) -> Vivify
	[197919] = 124682, -- Lifecycles (Enveloping Mist) -> Enveloping Mist
	[199387] = 101643, -- Spirit Tether (MW artifact) (slow) -> Transcendance
	[199407] = 191837, -- Light on Your Feet (MW artifact) -> Essence Font
	[199668] = 115310, -- Blessings of Yu'lon (MW artifact) -> Revival
	[120086] = 113656, -- Fists of Fury (stun)
	[202090] = { -- Teachings of the Monastery (MW mastery)
		100780, -- Tiger Palm (provider)
		100784, -- Blackout Kick (consumer)
	},
	[202248] = 115176, -- Guided Meditation (pvp) -> Zen Meditation
	[202274] = 115181, -- Incendiary Brew (pvp) -> Breath of Fire
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
	[216915] = 116694, -- Fortune Turned (pvp) -> Effuse
	[228287] = 101546, -- Mark of the Crane -> Spinning Crane Kick
	[228563] = 205523, -- Blackout Combo -> Blackout Strike
	[232055] = 113656, -- Fists of Fury (stun) (pvp)
	[233766] = 116694, -- Control the Mists (pvp) -> Effuse
	[242387] = 205320, -- Thunderfist (WW artifact) -> Strike of the Windlord (WW artifact)
})
