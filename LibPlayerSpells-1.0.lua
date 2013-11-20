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

local MAJOR, MINOR = "LibPlayerSpells-1.0", 1
local lib = LibStub:NewLibrary(MAJOR, MINOR)
if not lib then return end

local bor, band = bit.bor, bit.band

-- Basic constants use for the bitfields
lib.constants = {
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
	TRADESKILL  = 0x00001000, -- Tradeskill bonus ability

	-- Various flags
	AURA        = 0x00002000, -- Applies an aura
	UNIQUE_AURA = 0x00004000, -- Only one aura on a given unit
	COOLDOWN    = 0x00008000, -- Has a cooldown
	SURVIVAL    = 0x00010000, -- Survival
	BURST       = 0x00020000, -- Damage/healing burst

	-- Targeting
	HELPFUL     = 0x00040000, -- Usable on allies
	HARMFUL     = 0x00080000, -- Usable on enemies
	PERSONAL    = 0x00100000, -- Only usable on self
}
local constants = lib.constants

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
		constants.RACIAL,
		constants.TRADESKILL
	),
	TARGETING = bor(
		constants.HELPFUL,
		constants.HARMFUL,
		constants.PERSONAL
	),
}
local masks = lib.masks

-- Spells by category
lib.spells = lib.spells or {
	all         = {},
	RACIAL      = {},
	TRADESKILL  = {},

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
}
local spells = lib.spells

-- Versions of the different categories
lib.versions = lib.versions or {}
local versions = lib.versions

-- Buff to provider map.
-- The provider is the spell from the spellbook than can provides the given buff.
-- Said otherwise, a buff cannot appear on a player if the provider spell is not in his spellbook.
lib.providers = lib.providers or {}
local providers = lib.providers

-- Buff to modified map.
-- Indicate which spell is modified by a buff.
lib.modifiers = lib.modifiers or {}
local modifiers = lib.modifiers

local function ParseFilter(filter)
	local flags = 0
	for word in filter:gmatch("%a+") do
		local value = constants[word] or masks[word]
		if not value then
			error(format("%s: invalid filter: %q",  MAJOR, tostring(filter)), 5)
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
			if not key then return end
			local value = type(key) == "string" and ParseFilter(key) or tonumber(key)
			self[key] = value
			return value
		end,
	}
)
local filters = lib.__filters

--- Return version information about a category
-- @param category (string) The category.
-- @return (number) A version number suitable for comparison.
-- @return (number) The interface (i.e. patch) version.
-- @return (number) Minor version for the given interface version.
function lib:GetVersionInfo(category)
	if not spells[category] then
		error(format("%s: invalid category: %q", MAJOR, tostring(category)), 2)
	end
	local v = versions[category] or 0
	return v, ceil(v/100), v % 100
end

local TRUE = function() return true end

-- Parse filtering parameters
function lib:GetFlagTester(anyOf, include, exclude)
	if not anyOf and not restrict and not exclude then return TRUE end
	local anyOfMask = anyOf and filters[anyOf] or 0
	local includeMask = include and filters[include] or 0
	local excludeMask = exclude and filters[exclude] or 0
	local mask = bor(includeMask, excludeMask)
	local expected = bit.bxor(mask, excludeMask)
	if mask == 0 then
		return function(flags)
			return flags and band(flags, anyOfMask) ~= 0
		end
	elseif anyOfMask == 0 then
		return function(flags)
			return flags and band(flags, mask) == expected
		end
	else
		return function(flags)
			return flags and band(flags, anyOfMask) ~= 0 and band(flags, mask) == expected
		end
	end
end

-- Create a tester function.
-- These function takes a spell identifier as an argument and returns true
-- if the spell matches the given mask and compare values.
-- @return (function) The tester function.
function lib:GetSpellTester(anyOf, include, exclude)
	local tester = lib:GetFlagTester(anyOf, include, exclude)
	return function(spellId) return tester(spells.all[spellId or false] or 0) end
end

-- Filtering iterator
local function filterIterator(tester, index)
	local flags
	repeat
		spellId, flags = next(spells.all, spellId)
		if spellId and tester(flags) then
			return spellId, flags, providers[spellId], modifiers[spellId]
		end
	until not spellId
end

-- Iterate through spells.
-- @return An iterator suitable for for .. in .. do loops.
function lib:IterateSpells(anyOf, include, exclude)
	return filterIterator, lib:GetFlagTester(anyOf, include, exclude)
end

--- Iterate through spell categories.
-- The iterator returns the category name and the spells in that category.
-- @return An iterator suitable for .. in .. do loops.
function lib:IterateCategories()
	return pairs(spells)
end

--- Return information about a spell.
-- @param spellId (number) The spell identifier.
-- @return (number) The spell flags or nil if it is unknown.
-- @return (number) The identifier of the spell that provides the given spell.
-- @return (number) A spell modified by the given spell.
function lib:GetSpellInfo(spellId)
	local flags = spellId and spells.all[spellId]
	if flags then
		return flags, providers[spellId], modifiers[spellId]
	end
end

-- Used to register a category of spells
function lib:__RegisterSpells(category, interface, minor, newSpells, newProviders, newModifiers)
	if not spells[category] or category == 'all' then
		error(format("%s: invalid category: %q", MAJOR, tostring(category)), 2)
	end
	local version = tonumber(interface) * 100 + minor

	if (versions[category] or 0) >= version then return end

	-- Consistency checks
	for spellId in pairs(newSpells) do
		if not GetSpellLink(spellId) then
			error(format("%s: unknown spell #%d", MAJOR, spellId), 2)
		end
	end
	if newProviders then
		for spellId in pairs(newProviders) do
			if not newSpells[spellId] then
				error(format("%s: spell listed only in providers: %d", MAJOR, v), 2)
			end
		end
	end
	if newModifiers then
		for spellId in pairs(newModifiers) do
			if not newSpells[spellId] then
				error(format("%s: spell listed only in modifiers: %d", MAJOR, spellId), 2)
			end
		end
	end

	versions[category] = version
	versions.all = max(versions.all or 0, version)

	-- Wipe previous spells
	local all, db = spells.all, spells[category]
	for spellId in pairs(db) do
		db[spellId] = nil
		all[spellId] = nil
		providers[spellId] = nil
		modifiers[spellId] = nil
	end

	-- Rebuild the flags
	local catFlags = constants[category] or 0
	for key, value in pairs(newSpells) do
		if type(key) == "string" and type(value) == "table" then
			-- key is a filter, value a list of spell ids
			local flags = filters[key]
			for i, spellId in ipairs(value) do
				db[spellId] = bor(db[spellId] or 0, flags, catFlags)
			end
		elseif type(key) == "number" then
			-- key is a spell id, value a flag
			db[key] = bor(db[key] or 0, filters[value], catFlags)
		else
			error(format("%s: invalid spell data: (%q, %q)", MAJOR, tostring(key), tostring(value)), 2)
		end
	end

	-- Copy the new values to the merged category
	for spellId in pairs(db) do
		all[spellId] = db[spellId]
		providers[spellId] = newProviders and newProviders[spellId] or spellId
		modifiers[spellId] = newModifiers and newModifiers[spellId] or spellId
	end

end
