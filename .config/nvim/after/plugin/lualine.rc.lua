local status, lualine = pcall(require, "lualine")
if (not status) then return end

lualine.setup {
  options = {
    icons_enabled = true,
    -- theme = 'solarized_dark',
    theme = "nord",
    section_separators = {left = '', right = ''},
    component_separators = {left = '', right = ''},
    disabled_filetypes = {}
  },
  sections = {
    -- bufferline config
    -- bufferline config end
    lualine_a = {'mode'},
  
    lualine_b = {'branch'},
    lualine_c = {{
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 0 -- 0 = just filename, 1 = relative path, 2 = absolute path
    }},
    -- buffers
    --lualine_d = {{
      --'buffers',
      --show_filename_only = true,
      --hide_filename_extension = false,
      --show_modified_status = true,
      --mode = 0,

      --filetype_names = {
        --TelescopePrompt = 'Telescope',
        --dashboard = 'Dashboard',
        --packer = 'Packer',
        --fzf = 'FZF',
        --alpha = 'Alpha'
      --},
      --buffers_color = {
        --active = 'lualine_{section}',
        --inactive = 'lualine_{section}_inactive'
      --},
      --symbols = {
        --modified = ' ●',
        --alternate_file = '#',
       --directory =  ''
      --}
    --}},

    lualine_x = {
      { 'diagnostics', sources = {"nvim_diagnostic"}, symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '} },
      'encoding',
      'filetype'
    },
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {{
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
    }},
    lualine_d = {'buffers'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {'fugitive'}
}

