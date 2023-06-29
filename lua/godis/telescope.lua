local telescope = require('telescope')

telescope.setup {
    defaults = {
        prompt_prefix = "$$ ",
        file_ignore_patterns = {"node_modules", ".plugged", "dist"}
    }
}


-- To get fzf loaded and working with telescope,
-- you need to call load_extension, somewhere after
-- the setup function.
telescope.load_extension('fzf')
