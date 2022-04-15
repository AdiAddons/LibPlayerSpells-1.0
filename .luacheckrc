std = 'lua51'

quiet = 1 -- suppress report output for files without warnings

exclude_files = {
	'LibStub.lua',
	'tests/wowmock/**',
}

files['tests/core.lua'] = {
	globals = {
		'AdiDebug',
		'LibStub',
		'testFlagTester',
		'testFilterParsing',
		'testRegisterSpells',
	},
}

files['tests/databases.lua'] = {
	globals = {
		'testDatabases',
	},
}

-- see https://luacheck.readthedocs.io/en/stable/warnings.html#list-of-warnings
-- and https://luacheck.readthedocs.io/en/stable/cli.html#patterns
ignore = {
	'212/self', -- unused argument self
}

read_globals = {
	'AdiDebug',
	'LibStub',
}
