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
lib:__RegisterSpells("DRUID", 70300, 2, {
	COOLDOWN = {
		    740, -- Tranquility
		  18562, -- Swiftmend
		  20484, -- Rebirth (battle res)
		  33917, -- Mangle
		 102383, -- Wild Charge (Moonkin)
		 102401, -- Wild Charge (caster)
		 102417, -- Wild Charge (travel form)
		 108238, -- Renewal
		 197626, -- Starsurge (from Balance Affinity talent)
		 197721, -- Flourish
		 202028, -- Brutal Slash
		 202359, -- Astral Communion
		 202767, -- New Moon (Moonkin artifact)
		 202768, -- Half Moon (Moonkin artifact)
		 202771, -- Full Moon (Moonkin artifact)
		 204066, -- Lunar Beam
		[202060] = "BURST", -- Elune's Guidance
		DISPEL = {
			HELPFUL = {
				[ 2782] = "CURSE POISON", -- Remove Corruption
				[88423] = "CURSE POISON MAGIC", -- Nature's Cure
			},
		},
		INTERRUPT = {
			 78675, -- Solar Beam
			106839, -- Skull Bash
		},
		AURA = {
			HARMFUL = {
				  50259, -- Dazed
				  81261, -- Solar Beam
				 192090, -- Thrash (bear)
				 106830, -- Thrash (cat)
				 205644, -- Force of Nature
				 210723, -- Ashamane's Frenzy (Feral artifact)
				 214998, -- Roar of the Crowd (Guardian artifact)
				[206891] = "UNIQUE_AURA", -- Intimidated (PvP)
				CROWD_CTRL = {
					[    99] = "INCAPACITATE", -- Incapacitating Roar (incapacitate)
					[  5211] = "STUN", -- Mighty Bash (stun)
					[  6795] = "TAUNT", -- Growl (taunt)
					[236748] = "DISORIENT", -- Intimidating Roar (disorient)
					ROOT = {
						 45334, -- Immobilized (root)
						102359, -- Mass Entaglement (root)
					},
				},
				SNARE = {
					 61391, -- Typhoon (slow) (knockback)
					127797, -- Ursol's Vortex (slow) (knockback)
					214995, -- Bloody Paws (slow) (Guardian artifact)
				},
			},
			HELPFUL = {
				 48438, -- Wild Growth
				 77761, -- Stampeding Roar (bear)
				 77764, -- Stampeding Roar (cat)
				 29166, -- Innervate
				102342, -- Ironbark
				102351, -- Cenarion Ward
				240670, -- Fury of Ashamane (Feral artifact)
			},
			PERSONAL = {
				  1850, -- Dash
				  5215, -- Prowl
				 22842, -- Frenzied Regeneration
				102558, -- Incarnation: Guardian of Ursoc
				114108, -- Soul of the Forest
				137452, -- Displacer Beast
				155835, -- Bristling Fur
				164545, -- Solar Empowerment
				164547, -- Lunar Empowerment
				201671, -- Gory Fur (Guardian artifact)
				202737, -- Blessing of Elune
				202739, -- Blessing of An'she
				210583, -- Ashamane's Energy (Feral artifact)
				202425, -- Warrior of Elune
				202770, -- Fury of Elune
				BURST = {
					  5217, -- Tiger's Fury
					106951, -- Berserk
					102543, -- Incarnation: King of the Jungle
					102560, -- Incarnation: Chosen of Elune
					117679, -- Incarnation: Tree of Life
					194223, -- Celestial Alignment
					210649, -- Feral Instinct (Feral artifact)
				},
				SURVIVAL = {
					 22812, -- Barkskin
					 61336, -- Survival Instincts
					158792, -- Pulverize
					200851, -- Rage of the Sleeper (Guardian artifact)
				},
			},
		},
	},
	AURA = {
		HARMFUL = {
			   1079, -- Rip
			 155625, -- Moonfire (from Lunar Inspiration)
			 155722, -- Rake
			 164812, -- Moonfire
			 164815, -- Sunfire
			 197637, -- Stellar Empowerment
			 202347, -- Stellar Flare
			 240606, -- Circadian Invocation (Arcane) (Balance artifact)
			 240607, -- Circadian Invocation (Nature) (Balance artifact)
			[ 58180] = "SNARE", -- Infected Wounds (slow)
			CROWD_CTRL = {
				[339] = "ROOT", -- Entagling Roots (root)
				STUN = {
					163505, -- Rake (stun)
					203123, -- Maim (stun)
				},
			},
		},
		HELPFUL = {
			   774, -- Rejuvenation
			  8936, -- Regrowth
			 33763, -- Lifebloom
			155777, -- Rejuvenation (Germination)
			200389, -- Cultivation
			207386, -- Spring Blossoms
		},
		PERSONAL = {
			  16870, -- Clearcasting (Restoration)
			  52610, -- Savage Roar
			  69369, -- Predatory Swiftness
			  93622, -- Mangle!
			 135700, -- Clearcasting (Feral)
			 145152, -- Bloodtalons
			 157228, -- Owlkin Frenzy
			 189877, -- Power of the Archdruid (Restoration artifact)
			 213680, -- Guardian of Elune
			 213708, -- Galactic Guardian
			 239952, -- Wax and Wane (Balance artifact)
			[192081] = "SURVIVAL", -- Ironfur
		},
	},
}, {
	-- map aura to provider(s)
	[ 16870] = 113043, -- Clearcasting (Restoration) <- Omen of Clarity
	[ 45334] = 102401, -- Immobilized (root) <- Wild Charge
	[ 50259] = 102401, -- Dazed <- Wild Charge
	[ 58180] = 48484, -- Infected Wounds (slow)
	[ 61391] = 132469, -- Typhoon (slow) (knockback)
	[ 69369] = 16974, -- Predatory Swiftness
	[ 81261] = 78675, -- Solar Beam
	[ 93622] = 210706, -- Mangle! <- Gore
	[114108] = 158478, -- Soul of the Forest
	[117679] = 33891, -- Incarnation: Tree of Life
	[127797] = 102793, -- Ursol's Vortex (slow) (knockback)
	[135700] = 16864, -- Clearcasting (Feral) <- Omen of Clarity
	[137452] = 102280, -- Displacer Beast
	[145152] = 155672, -- Bloodtalons
	[155625] = 155580, -- Moonfire <- Lunar Inspiration
	[155722] = { -- Rake
		  1822, -- Rake (Feral)
		202155, -- Feral Affinity (Guardian)
		202157, -- Feral Affinity (Balance)
	},
	[155777] = 155675, -- Rejuvenation (Germination) <- Germination
	[157228] = 231042, -- Owlkin Frenzy <- Moonkin Form (Rank 2)
	[158792] = 80313, -- Pulverize
	[163505] = 1822, -- Rake (stun)
	[164545] = { -- Solar Empowerment
		 78674, -- Starsurge (Balance)
		197626, -- Starsurge (from Balance Affinity talent)
	},
	[164547] = { -- Lunar Empowerment
		 78674, -- Starsurge (Balance)
		197626, -- Starsurge (from Balance Affinity talent)
	},
	[164812] = { -- Moonfire
		  8921, -- Moonfire
		155625, -- Moonfire (from Lunar Inspiration)
	},
	[164815] = { -- Sunfire
		 93402, -- Sunfire (Balance)
		197488, -- Sunfire (from Balance Affinity talent)
	},
	[189877] = 189870, -- Power of the Archdruid (Restoration artifact)
	[192090] = 77758, -- Thrash
	[197637] = 191034, -- Stellar Empowerment <- Starfall
	[200389] = 200390, -- Cultivation
	[201671] = 200854, -- Gory Fur (Guardian artifact)
	[202737] = 202360, -- Blessing of Elune <- Blessing of the Ancients
	[202739] = 202360, -- Blessing of An'she <- Blessing of the Ancients
	[203123] = 22570, -- Maim (stun)
	[205644] = 205636, -- Force of Nature
	[206891] = 207017, -- Intimidated <- Alpha Challenge (Guardian Honor Talent)
	[207386] = 207385, -- Spring Blossoms
	[210583] = 210579, -- Ashamane's Energy (Feral artifact)
	[210649] = 210631, -- Feral Instinct (Feral artifact)
	[210723] = 210722, -- Ashamane's Frenzy (Feral artifact)
	[213680] = 155578, -- Guardian of Elune
	[213708] = 203964, -- Galactic Guardian
	[214995] = 200515, -- Bloody Paws (slow) (Guardian artifact)
	[214998] = 214996, -- Roar of the Crowd (Guardian artifact)
	[239952] = 238083, -- Wax and Wane (Balance artifact)
	[240606] = 238119, -- Circadian Invocation (Arcane) (Balance artifact)
	[240607] = 238119, -- Circadian Invocation (Nature) (Balance artifact)
	[240670] = 238084, -- Fury of Ashamane (Feral artifact)
}, {
	-- map aura to modified spell(s)
	[ 16870] = 8936, -- Clearcasting (Restoration) -> Regrowth
	[ 45334] = 16979, -- Immobilized (root) -> Wild Charge (bear)
	[ 50259] = 49376, -- Dazed -> Wild Charge (cat)
	[ 58180] = 1822, -- Infected Wounds (slow) -> Rake
	[ 69369] = { -- Predatory Swiftness
		  339, -- Entagling Roots
		 5185, -- Healing Touch
	},
	[ 93622] = 33917, -- Mangle! -> Mangle
	[114108] = 18562, -- Soul of the Forest -> Swiftmend
	[135700] = { -- Clearcasting (Feral)
		  5221, -- Shred
		106785, -- Swipe
		106830, -- Thrash
	},
	[145152] = 5185, -- Bloodtalons -> Healing Touch
	[155625] = { -- Moonfire (from Lunar Inspiration)
		  8921, -- Moonfire
		155625, -- Moonfire (from Lunar Inspiration)
	},
	[155722] = 1822, -- Rake
	[155777] = 774, -- Rejuvenation (Germination) -> Rejuvenation
	[157228] = 194153, -- Owlkin Frenzy -> Lunar Strike
	[164545] = { -- Solar Empowerment
		  5176, -- Solar Wrath (Restoration)
		190984, -- Solar Wrath (Balance)
		197629, -- Solar Wrath (from Balance Affinity talent)
	},
	[164547] = { -- Lunar Empowerment
		194153, -- Lunar Strike (Balance)
		197628, -- Lunar Strike (from Balance Affinity talent)
	},
	[164815] = {
		 93402, -- Sunfire (Balance)
		197630, -- Sunfire (from Balance Affinity talent)
	},
	[189877] = { -- Power of the Archdruid (Restoration artifact)
		 774, -- Rejuvenation
		8936, -- Regrowth
	},
	[200389] = 774, -- Cultivation -> Rejuvenation
	[201671] = 192081, -- Gory Fur (Guardian artifact) - > Ironfur
	[202425] = 194153, -- Warrior of Elune -> Lunar Strike
	[207386] = 145205, -- Spring Blossoms -> Efflorescence
	[210583] = 5217, -- Ashamane's Energy (Feral artifact) -> Tiger's Fury
	[210649] = { -- Feral Instinct (Feral artifact)
		106951, -- Berserk
		102543, -- Incarnation: King of the Jungle
	},
	[213680] = 33917, -- Guardian of Elune -> Mangle
	[213708] = 8921, -- Galactic Guardian -> Moonfire
	[214995] = 77758, -- Bloody Paws (slow) (Guardian artifact) -> Thrash
	[214998] = { -- Roar of the Crowd (Guardian artifact)
		77761, -- Stampeding Roar (bear)
		77764, -- Stampeding Roar (cat)
	},
	[239952] = { -- Wax and Wane (Balance artifact)
		 8921, -- Moonfire
		93402, -- Sunfire
	},
	[240606] = 8921, -- Circadian Invocation (Arcane) (Balance artifact) -> Moonfire
	[240607] = 93402, -- Circadian Invocation (Nature) (Balance artifact) -> Sunfire
	[240670] = 5217, -- Fury of Ashamane (Feral artifact) -> Tiger's Fury
})
