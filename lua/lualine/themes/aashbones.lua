local config = require("aashbones").config
local p = require("aashbones.palette").load(config.variant)

local inactive_bg = p.bg2
local inactive_fg = p.fg1

return {
  normal = {
    a = { bg = p.bg5, fg = p.type, gui = "bold" },
    b = { bg = p.bg4, fg = p.type },
    c = { bg = p.bg3, fg = p.fg },
  },

  insert = {
    a = { bg = p.diff_add, fg = p.leaf, gui = "bold" },
  },

  command = {
    a = { bg = p.blossom_bg, fg = p.keyword, gui = "bold" },
  },

  visual = {
    a = { bg = p.visual, fg = p.func, gui = "bold" },
  },

  replace = {
    a = { bg = p.diff_delete, fg = p.param, gui = "bold" },
  },

  inactive = {
    a = { bg = inactive_bg, fg = inactive_fg, gui = "bold" },
    b = { bg = inactive_bg, fg = inactive_fg },
    c = { bg = inactive_bg, fg = inactive_fg },
  },
}
