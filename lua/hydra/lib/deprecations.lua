local util = require("hydra.lib.util")

-- The signature of the deprecate function is as follows
-- @param deprecated_configuration string
--      The configuruation option (in dot notation) that is being deprecated
-- @param removal_date string
--      The date (in %Y-%m-%d format to avoid any potential confusion) that
--      the option will be removed from hydra
-- @param migration_function function
--      A function to migrate the existing option to whatever it needs
--      to be now.
--      Note, if the deprecation is simply removal, this function
--      is still required but can do nothing
--      Note, it is expected that you are modifying the configuration
--      here, we do _not_ save any return values from the migration_function
-- @param notification_hint string|nil
--      An optional hint to point the user to the new configuration option if
--      there is one

util.deprecate("hint.border", "2024-02-01", function(config)
    if not config.hint.float_opts then
        config.hint.float_opts = {}
    end
    config.hint.float_opts.border = config.hint.border
    config.hint.border = nil
end, "hint.float_opts")
