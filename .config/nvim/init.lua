require('vader.base')
require('vader.highlights')
require('vader.maps')
require('vader.plugins')

-- vim.cmd "colorscheme gruvbox"

local has = function(x)
  return vim.fn.has(x) == 1
end
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('vader.macos')
end
if is_win then
  require('vader.windows')
end
