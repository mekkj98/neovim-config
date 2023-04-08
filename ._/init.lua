require('keshav.core.base')
require('keshav.core.highlights')
require('keshav.core.keymaps')
require("keshav.plugins.setup")
require("keshav.core.themes")

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('keshav.system.macos')
end

if is_win then
  require('keshav.system.windows')
end
