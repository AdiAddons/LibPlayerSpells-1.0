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

local MAJOR, MINOR, lib = "LibPlayerSpells-1.0", 5
if LibStub then
	lib = LibStub:NewLibrary(MAJOR, MINOR)
	if not lib then return end
else
	lib = {}
end

local _G = _G
local ceil = _G.ceil
local error = _G.error
local format = _G.format
local GetSpellLink = _G.GetSpellLink
local ipairs = _G.ipairs
local max = _G.max
local next = _G.next
local pairs = _G.pairs
local setmetatable = _G.setmetatable
local tonumber = _G.tonumber
local tostring = _G.tostring
local type = _G.type
local wipe = _G.wipe

local bor = _G.bit.bor
local band = _G.bit.band
local bxor = _G.bit.bxor
local bnot = _G.bit.bnot

-- Basic constants use for the bitfields
lib.constants = {
	-- Special types -- these alters how the 13 lower bits are to be interpreted
	RAIDBUFF    = 0x80000000, -- Raid buffs
	CROWD_CTL   = 0x40000000, -- Crowd-control debuffs
	INTERRUPT   = 0x20000000, -- Interrupt spells
	DISPEL      = 0x10000000, -- Dispel spell

	-- Sources
	DEATHKNIGHT = 0x00000001,
	DRUID       = 0x00000002,
	HUNTER      = 0x00000004,
	MAGE        = 0x00000008,
	MONK        = 0x00000010,
	PALADIN     = 0x00000020,
	PRIEST      = 0x00000040,
	ROGUE       = 0x00000080,
	SHAMAN      = 0x00000100,
	WARLOCK     = 0x00000200,
	WARRIOR     = 0x00000400,
	RACIAL      = 0x00000800, -- Racial trait

	-- Raid buff types, *requires* RAIDBUFF, else this messes up sources
	STATS       = 0x00000001, -- +5% strengh, agility and intellect
	STAMINA     = 0x00000002, -- +10% stamina
	ATK_POWER   = 0x00000004, -- +10% attack power
	MULTISTRIKE = 0x00000008, -- +5% Multistrike
	SPL_POWER   = 0x00000010, -- +10% spell power
	HASTE       = 0x00000020, -- +5% haste
	CRITICAL    = 0x00000040, -- +5% critical strike
	MASTERY     = 0x00000080, -- Flat mastery bonus
	BURST_HASTE = 0x00000100, -- Bloodlust/Heroism
	VERSATILITY = 0x00000200, -- +3% Versatility

	-- Targeting
	HELPFUL     = 0x00002000, -- Usable on allies
	HARMFUL     = 0x00004000, -- Usable on enemies
	PERSONAL    = 0x00008000, -- Only usable on self
	PET         = 0x00010000, -- Only usable on pet

	-- Various flags
	AURA        = 0x00020000, -- Applies an aura
	UNIQUE_AURA = 0x00040000, -- Only one aura on a given unit
	COOLDOWN    = 0x00080000, -- Has a cooldown
	SURVIVAL    = 0x00100000, -- Survival spell
	BURST       = 0x00200000, -- Damage/healing burst spell
	MANA_REGEN  = 0x00400000, -- Recharge mana
	POWER_REGEN = 0x00800000, -- Recharge any power but mana
	IMPORTANT   = 0x01000000, -- Important spell the player should react to
	INVERT_AURA = 0x02000000, -- Watch this as a debuff on allies or a buff on enemies
}
local constants = lib.constants

local RAID_BUFF_TYPES = {
	constants.STATS, constants.STAMINA, constants.ATK_POWER,
	constants.MULTISTRIKE, constants.SPL_POWER, constants.HASTE,
	constants.CRITICAL, constants.MASTERY, constants.VERSATILITY,
	constants.BURST_HASTE,
}

-- Convenient bitmasks
lib.masks = {
	CLASS = bor(
		constants.DEATHKNIGHT,
		constants.DRUID,
		constants.HUNTER,
		constants.MAGE,
		constants.MONK,
		constants.PALADIN,
		constants.PRIEST,
		constants.ROGUE,
		constants.SHAMAN,
		constants.WARLOCK,
		constants.WARRIOR
	),
	SOURCE = bor(
		constants.DEATHKNIGHT,
		constants.DRUID,
		constants.HUNTER,
		constants.MAGE,
		constants.MONK,
		constants.PALADIN,
		constants.PRIEST,
		constants.ROGUE,
		constants.SHAMAN,
		constants.WARLOCK,
		constants.WARRIOR,
		constants.RACIAL
	),
	TARGETING = bor(
		constants.HELPFUL,
		constants.HARMFUL,
		constants.PERSONAL,
		constants.PET
	),
	TYPE = bor(
		constants.RAIDBUFF,
		constants.CROWD_CTL,
		constants.INTERRUPT,
		constants.DISPEL
	),
	RAIDBUFF_TYPE = bor(
		constants.STATS,
		constants.STAMINA,
		constants.ATK_POWER,
		constants.MULTISTRIKE,
		constants.SPL_POWER,
		constants.HASTE,
		constants.CRITICAL,
		constants.MASTERY,
		constants.BURST_HASTE,
		constants.VERSATILITY
	),
}
local masks = lib.masks

-- Spells and their flags
lib.__spells = lib.__spells or {}
local spells = lib.__spells

-- Spells by categories
lib.__categories = lib.__categories or {
	DEATHKNIGHT = {},
	DRUID       = {},
	HUNTER      = {},
	MAGE        = {},
	MONK        = {},
	PALADIN     = {},
	PRIEST      = {},
	ROGUE       = {},
	SHAMAN      = {},
	WARLOCK     = {},
	WARRIOR     = {},
	RACIAL      = {},
}
local categories = lib.__categories

-- Special spells
lib.__specials = lib.__specials or {
	RAIDBUFF = {},
}
local specials = lib.__specials

-- Versions of the different categories
lib.__versions = lib.__versions or {}
local versions = lib.__versions

-- Buff to provider map.
-- The provider is the spell from the spellbook than can provides the given buff.
-- Said otherwise, a buff cannot appear on a player if the provider spell is not in his spellbook.
lib.__providers = lib.__providers or {}
local providers = lib.__providers

-- Buff to modified map.
-- Indicate which spell is modified by a buff.
lib.__modifiers = lib.__modifiers or {}
local modifiers = lib.__modifiers

-- Spell to category map.
-- Indicate which category defined a spell.
lib.__sources = lib.__sources or {}
local sources = lib.__sources

local function ParseFilter(filter)
	local flags = 0
	for word in filter:gmatch("[%a_]+") do
		local value = constants[word] or masks[word]
		if not value then
			error(format("%s: invalid filter: %q (because of %q)",  MAJOR, tostring(filter), tostring(word)), 5)
		end
		flags = bor(flags, value)
	end
	return flags
end

-- A weak table to memoize parsed filters
lib.__filters = setmetatable(
	wipe(lib.__filters or {}),
	{
		__mode = 'kv',
		__index = function(self, key)
			if not key then return 0 end
			local value = type(key) == "string" and ParseFilter(key) or tonumber(key)
			self[key] = value
			return value
		end,
	}
)
local filters = lib.__filters
filters[""] = 0

--- Return version information about a category
-- @param category (string) The category.
-- @return (number) A version number suitable for comparison.
-- @return (number) The interface (i.e. patch) version.
-- @return (number) Minor version for the given interface version.
function lib:GetVersionInfo(category)
	if not categories[category] then
		error(format("%s: invalid category: %q", MAJOR, tostring(category)), 2)
	end
	local v = versions[category] or 0
	return v, floor(v/100), v % 100
end

local TRUE = function() return true end

--- Create a flag tester callback.
-- This callback takes a flag as an argument and returns true when the conditions are met.
-- @param anyOf (string|number) The tested value should contain at least one these flags.
-- @param include (string|number) The tested value must contain all these flags.
-- @param exclude (string|number) The testes value must not contain any of these flags.
-- @return (function) The tester callback.
function lib:GetFlagTester(anyOf, include, exclude)
	local anyOfMask = filters[anyOf]
	if include or exclude then
		local includeMask, excludeMask = filters[include], filters[exclude]
		local mask = bor(includeMask, excludeMask)
		local expected = bxor(mask, excludeMask)
		if anyOf then
			return function(flags)
				return flags and band(flags, anyOfMask) ~= 0 and band(flags, mask) == expected
			end
		else
			return function(flags)
				return flags and band(flags, mask) == expected
			end
		end
	elseif anyOf then
		return function(flags)
			return flags and band(flags, anyOfMask) ~= 0
		end
	else
		return TRUE
	end
end

--- Create a spell tester callback.
-- This callback takes a spell identifier as an argument and returns true when the conditions are met.
-- @param anyOf (string|number) The tested value should contain at least one these flags.
-- @param include (string|number) The tested value must contain all these flags.
-- @param exclude (string|number) The testes value must not contain any of these flags.
-- @return (function) The tester callback.
function lib:GetSpellTester(anyOf, include, exclude)
	local tester = lib:GetFlagTester(anyOf, include, exclude)
	return function(spellId) return tester(spells[spellId or false] or 0) end
end

-- Filtering iterator
local function FilterIterator(tester, spellId)
	local flags
	repeat
		spellId, flags = next(spells, spellId)
		if spellId and tester(flags) then
			return spellId, flags, providers[spellId], modifiers[spellId], specials.RAIDBUFF[spellId], sources[spellId]
		end
	until not spellId
end

-- Iterate through spells.
-- @return An iterator suitable for for .. in .. do loops.
function lib:IterateSpells(anyOf, include, exclude)
	return FilterIterator, lib:GetFlagTester(anyOf, include, exclude)
end

--- Iterate through spell categories.
-- The iterator returns the category name and the spells in that category.
-- @return An iterator suitable for .. in .. do loops.
function lib:IterateCategories()
	return pairs(categories)
end

--- Return the lsit of raid buff types.
-- @return (table)
function lib:GetRaidBuffTypes()
	return RAID_BUFF_TYPES
end

--- Return information about a spell.
-- @param spellId (number) The spell identifier.
-- @return (number) The spell flags or nil if it is unknown.
-- @return (number|table) Spell(s) providing the given spell.
-- @return (number|table) Spell(s) modified by the given spell.
-- @return (number) Raid buff type, if the spell is a raid buff (RAIDBUFF is set in flags).
function lib:GetSpellInfo(spellId)
	local flags = spellId and spells[spellId]
	if flags then
		return flags, providers[spellId], modifiers[spellId], specials.RAIDBUFF[spellId], sources[spellId]
	end
end

-- Filter valid spell ids.
-- This can fails when the client cache is empty (e.g. after a major patch).
-- Accept a table, in which case it is recursively validated.
local function FilterSpellId(spellId, spellType, errors)
	if type(spellId) == "table"  then
		local ids = {}
		for i, subId in pairs(spellId) do
			local validated = FilterSpellId(subId, spellType, errors)
			if validated then
				tinsert(ids, validated)
			end
		end
		return next(ids) and ids or nil
	elseif type(spellId) ~= "number" then
		errors[spellId] = format("invalid %s, expected number, got %s", spellType, type(spellId))
	elseif not GetSpellLink(spellId) then
		errors[spellId] = format("unknown %s", spellType)
	else
		return spellId
	end
end

-- Flatten and validate the spell data.
local function FlattenSpellData(source, target, prefix, errorLevel)
	prefix = strtrim(prefix)
	for key, value in pairs(source) do
		local keyType, valueType = type(key), type(value)
		if valueType == "number" then
			-- value is a spell id
			target[value] = prefix
		elseif keyType == "number" and value == true then
			-- key is a spell id, value is true
			target[key] = prefix
		elseif keyType == "number" and valueType == "string" then
			-- key is a spell id, value is a flag
			target[key] = prefix.." "..value
		elseif keyType == "string" and valueType == "table" then
			-- Value is a nested table, key indicates common flags
			FlattenSpellData(value, target,  prefix.." "..key, errorLevel+1)
		else
			error(format("%s: invalid spell definition: [%q] = %q", MAJOR, tostring(key), tostring(value)), errorLevel+1)
		end
	end
end

-- Used to register a category of spells
function lib:__RegisterSpells(category, interface, minor, newSpells, newProviders, newModifiers)
	if not categories[category] then
		error(format("%s: invalid category: %q", MAJOR, tostring(category)), 2)
	end
	local version = tonumber(interface) * 100 + minor

	if (versions[category] or 0) >= version then return end
	versions[category] = version

	-- Wipe previous spells
	local db, raidbuffs = categories[category], specials.RAIDBUFF
	for spellId in pairs(db) do
		db[spellId] = nil
		spells[spellId] = nil
		providers[spellId] = nil
		modifiers[spellId] = nil
		raidbuffs[spellId] = nil
		sources[spellId] = nil
	end

	-- Flatten the spell definitions
	local defs = {}
	FlattenSpellData(newSpells, defs, "", 2)

	-- Useful constants
	local rshift = bit.rshift
	local RAIDBUFF = constants.RAIDBUFF
	local TYPE = masks.TYPE
	local RAIDBUFF_TYPE = masks.RAIDBUFF_TYPE
	local NOT_RAIDBUFF_TYPE = bnot(RAIDBUFF_TYPE)
	local RAIDBUFF_FLAGS = filters["HELPFUL UNIQUE_AURA AURA"]

	local errors = {}

	-- Build the flags
	local categoryFlags = constants[category] or 0
	for spellId, flagDef in pairs(defs) do
		spellId = FilterSpellId(spellId, "spell", errors)
		if spellId then
			if sources[spellId] then
				errors[spellId] = format("already listed in the %s database", sources[spellId])
			else
				local flags = filters[flagDef]

				if band(flags, TYPE) == RAIDBUFF then
					-- Raid buff: store the buff type elsewhere
					raidbuffs[spellId] = band(flags, RAIDBUFF_TYPE)
					-- Remove the buff type and adds the common flags for raid buffs
					flags = bor(band(flags, NOT_RAIDBUFF_TYPE), RAIDBUFF_FLAGS)
				end

				db[spellId] = bor(db[spellId] or 0, flags, categoryFlags)
				sources[spellId] = category
			end
		end
	end

	-- Consistency checks
	if newProviders then
		for spellId, providerId in pairs(newProviders) do
			if not db[spellId] then
				if not errors[spellId] then
					errors[spellId] = "only in providers"
				end
				newProviders[spellId] = nil
			else
				local validSpellId = FilterSpellId(spellId, "provided spell", errors)
				local validProviderId = FilterSpellId(providerId, "provider spell", errors)
				newProviders[spellId] = validSpellId and validProviderId
			end
		end
	end
	if newModifiers then
		for spellId, modified in pairs(newModifiers) do
			if not db[spellId] then
				if not errors[spellId] then
					errors[spellId] = "only in modifiers"
				end
				newModifiers[spellId] = nil
			else
				local validSpellId = FilterSpellId(spellId, "modifier spell", errors)
				local validModified = FilterSpellId(modified, "modified spell", errors)
				newModifiers[spellId] = validSpellId and validModified
			end
		end
	end

	-- Copy the new values to the merged category
	for spellId in pairs(db) do
		spells[spellId] = db[spellId]
		providers[spellId] = newProviders and newProviders[spellId] or spellId
		modifiers[spellId] = newModifiers and newModifiers[spellId] or providers[spellId]
	end

	if next(errors) then
		local msgs = {}
		local clientInterface = select(4, GetBuildInfo())
		if tonumber(interface) < clientInterface then
			tinsert(msgs, format("Data are probably outdated: data version=%5d, client version=%5d", tonumber(interface), clientInterface))
		end
		for spellId, msg in pairs(errors) do
			tinsert(msgs, format("Spell #%d: %s", spellId, msg))
		end
		geterrorhandler()(format("%s: %d errors in %s database:\n%s", MAJOR, #msgs, category, table.concat(msgs, "\n")))
	end

end

return lib
