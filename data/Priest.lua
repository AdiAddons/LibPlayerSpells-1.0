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
along with LibPlayerSpells-1.0. If not, see <http://www.gnu.org/licenses/>.
--]]

local lib = LibStub('LibPlayerSpells-1.0')
if not lib then return end
lib:__RegisterSpells('PRIEST', 80000, 1, {
	COOLDOWN = {
		  2050, -- Holy Word: Serenity (Holy)
		 34433, -- Shadowfiend (Discipline)
		 34861, -- Holy Word: Sanctify (Holy)
		 73325, -- Leap of Faith
		110744, -- Divine Star (Holy talent)
		120517, -- Halo (Holy talent)
		204883, -- Circle of Healing (Holy talent)
		265202, -- Holy Word: Salvation (Holy talent)
		AURA = {
			HARMFUL = {
				14914, -- Holy Fire (Holy)
				CROWD_CTRL = {
					[  8122] = 'DISORIENT', -- Psychic Scream
					[200196] = 'INCAPACITATE', -- Holy Word: Chastise
					[200200] = 'STUN', -- Holy Word: Chastise (Holy talent)
				},
				SNARE = {
					[204263] = 'KNOCKBACK', -- Shining Force (Holy talent)
				},
			},
			HELPFUL = {
				  41635, -- Prayer of Mending (Holy)
				  64844, -- Divine Hymn (Holy)
				 121557, -- Angelic Feather (Holy talent)
				 213610, -- Holy Ward (Holy honor talent)
				 232707, -- Ray of Hope (Holy honor talent)
				[64901] = 'POWER_REGEN', -- Symbol of Hope (Holy)
				SURVIVAL = {
					33206, -- Pain Suppression (Discipline)
					47788, -- Guardian Spirit (Holy)
					81782, -- Power Word: Barrier (Discipline)
				},
			},
			PERSONAL = {
				   586, -- Fade
				 47536, -- Rapture (Discipline)
				 64843, -- Divine Hymn (Holy)
				200183, -- Apotheosis (Holy talent)
				SURVIVAL = {
					 19236, -- Desperate Prayer (Discipline/Holy)
					196773, -- Inner Focus (Holy honor talent)
					213602, -- Greater Fade (Holy honor talent)
					215769, -- Spirit of Redemption (Holy honor talent)
				}
			},
		},
	},
	AURA = {
		HARMFUL = {
			   589, -- Shadow Word: Pain (Discipline)
			208772, -- Smite (Discipline)
			CROWD_CTRL = {
				[ 605] = 'DISORIENT', -- Mind Control
				[9484] = 'INCAPACITATE', -- Shackle Undead
			},
		},
		HELPFUL = {
			     17, -- Power Word: Shield (Discipline)
			    139, -- Renew (Holy)
			 111759, -- Levitate
			 194384, -- Atonement (Discipline)
			 215962, -- Inspiration (Holy honor talent)
			[ 21562] = 'RAIDBUFF', -- Power Word: Fortitude
		},
		PERSONAL = {
			  2096, -- Mind Vision
			114255, -- Surge of Light (Holy talent)
			198069, -- Power of the Dark Side (Discipline)
		},
	},
	DISPEL = {
		[528] = 'HARMFUL MAGIC', -- Dispel Magic
		HELPFUL = {
			COOLDOWN = {
				[  527] = 'DISEASE MAGIC', -- Purify (Discipline/Holy)
				[32375] = 'HARMFUL MAGIC', -- Mass Dispel
			},
		},
	},
}, { -- map aura to provider(s)
	[ 41635] =  33076, -- Prayer of Mending (Holy)
	[ 64844] =  64843, -- Divine Hymn (Holy)
	[ 81782] =  62618, -- Power Word: Barrier (Discipline)
	[111759] =   1706, -- Levitate
	[114255] = 109186, -- Surge of Light (Holy talent)
	[121557] = 121536, -- Angelic Feather (Holy talent)
	[194384] =  81749, -- Atonement (Discipline)
	[196773] = 196762, -- Inner Focus (Holy honor talent)
	[198069] = 198068, -- Power of the Dark Side (Discipline)
	[200196] =  88625, -- Holy Word: Chastise
	[200200] = 200199, -- Holy Word: Chastise <- Censure (Holy talent)
	[208772] = 231682, -- Smite (Discipline) <- Smite (Rank 2)
	[215769] = 215782, -- Spirit of Redemption <- Spirit of the Redeemer (Holy honor talent)
	[215962] = 215960, -- Inspiration <- Greater Heal (Holy honor talent)
	[232707] = 197268, -- Ray of Hope (Holy honor talent)
}, { -- map aura(s) to modified spell(s)
	[114255] =   2061, -- Surge of Light (Holy talent) -> Flash Heal
	[194384] = { -- Atonement (Discipline)
			17, -- Power Word: Shield
		186263, -- Shadow Mend
		194509, -- Power Word: Radiance
	},
	[196773] = { -- Inner Focus (Holy honor talent)
		  585, -- Smite
		 2050, -- Holy Word: Serenity
		 2060, -- Heal
		 2061, -- Flash Heal
		14914, -- Holy Fire
	},
	[198069] =  47540, -- Power of the Dark Side (Discipline) -> Penance
	[200200] =  88625, -- Holy Word: Chastise (Holy talent)
	[208772] =    585, -- Smite (Discipline)
	[215769] = 215769, -- Spirit of Redemption (Holy honor talent)
	[215962] =   2060, -- Inspiration (Holy honor talent) -> Heal
})
