local inactive_bg = "#1F2E37"
local inactive_fg = "#D1E0DA"

return {
  normal = {
    a = { bg = "#4F6F82", fg = "#56B6C2", gui = "bold" },
    b = { bg = "#334A57", fg = "#56B6C2" },
    c = { bg = "#273944", fg = "#C6D5CF" },
  },

  insert = {
    a = { bg = "#2A4A2A", fg = "#98C379", gui = "bold" },
  },

  command = {
    a = { bg = "#3D2845", fg = "#C678DD", gui = "bold" },
  },

  visual = {
    a = { bg = "#3A3E3D", fg = "#E5C07B", gui = "bold" },
  },

  replace = {
    a = { bg = "#3B2023", fg = "#E06C75", gui = "bold" },
  },

  inactive = {
    a = { bg = inactive_bg, fg = inactive_fg, gui = "bold" },
    b = { bg = inactive_bg, fg = inactive_fg },
    c = { bg = inactive_bg, fg = inactive_fg },
  },
}
