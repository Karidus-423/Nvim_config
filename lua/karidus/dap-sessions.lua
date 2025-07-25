-- 1. Look for the meta at the root nvim config directory
-- 2. Look for the file called `launch.json`, or whatever the user passed.
-- 3. Read all of the configuration and return the list of them.
-- 4. If its not there create it.
-- 5. Give user prompts of needed information to create one.
-- 6. Add a command to create a configuration whenever they please.
-- 7. There are 3 different configs for each type of adapter `exe`, `server` ,`pipe`
-- {
-- 	name = 'smtextractor', config name
-- 	type = 'lldb', debugger to use
-- 	request = 'launch', or attach
-- 	program = 'usr/bin/zig'
-- 	cwd = commands' working directory
-- 	stopOnEntry =
-- 	args = {},
-- },

-- List of functions that can be accessed anywhere this module is called.
local M = {}

--Look for meta/launch.json
local function find_config()
end

local function get_configs()
	--Found file?
	local search = find_config()

	if search == false then
		--create new file
	end

	--return json config files
end

function M.create_dap_config(file)
	--prompt creation of config
end

function M.load_configs(type)
	local configs = get_configs()
	--if size of config is 0
	--prompt creation of config
	--return created config
	--else
	--open buffer showing configs
	--prompt user to select one
	--return selection
end

return M
