local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        -- your custom insert mode mappings
        ["i"] = {
          ["<C-w>"] = function() vim.cmd('normal vbd') end,
        },
        ["n"] = {
          -- your custom normal mode mappings
          ["N"] = fb_actions.create,
          ["h"] = fb_actions.goto_parent_dir,
          ["/"] = function()
            vim.cmd('startinsert')
          end
        },
      },
    },
  },
}

telescope.load_extension("file_browser")

-- Find Files
vim.keymap.set('n', '<Leader>f',
  function()
    builtin.find_files({
      no_ignore = true,
      hidden = true
    })
  end)

-- Live Grep
vim.keymap.set('n', '<Leader>g', function()
  builtin.live_grep()
end)

-- Search buffers
vim.keymap.set('n', '\\\\', function()
  builtin.buffers()
end)

-- Search Help Tags
vim.keymap.set('n', '<Leader>t', function()
  builtin.help_tags()
end)

-- Resume
vim.keymap.set('n', ';;', function()
  builtin.resume()
end)

-- Diagnostics
vim.keymap.set('n', '<Leader>e', function()
  builtin.diagnostics()
end)

-- Search File function
vim.keymap.set("n", "sf", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = "normal",
    layout_config = { height = 40 }
  })
end)
