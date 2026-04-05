# aashbones

A dark Neovim colorscheme with selective vibrancy — keywords, functions, types, and parameters pop while everything else stays muted. Inspired by [neobones](https://github.com/zenbones-theme/zenbones.nvim).

## Variants

### tide (default)

Cool, deep oceanic dark theme. Dark blue-green background with vibrant syntax accents.

| Role | Color | Hex |
|---|---|---|
| Keywords | Magenta (bold) | `#C678DD` |
| Functions | Golden yellow | `#E5C07B` |
| Types | Cyan/teal (bold) | `#56B6C2` |
| Constants | Orange | `#D19A66` |
| Parameters | Soft red | `#E06C75` |
| Strings | Olive green (muted) | `#7A9A6D` |
| Operators | Gray (muted) | `#7E8A8F` |
| Comments | Dark gray (italic) | `#536977` |
| Background | Deep ocean | `#0F191F` |

More variants coming soon.

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "aashiksadar/aashbones",
  lazy = false,
  priority = 1000,
  config = function()
    require("aashbones").setup({
      variant = "tide",       -- default variant
      transparent = true,     -- optional: transparent background
    })
    vim.cmd.colorscheme("aashbones")
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "aashiksadar/aashbones",
  config = function()
    require("aashbones").setup()
    vim.cmd.colorscheme("aashbones")
  end,
}
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'aashiksadar/aashbones'

" After plug#end():
lua require("aashbones").setup()
colorscheme aashbones
```

## Configuration

Call `setup()` **before** setting the colorscheme:

```lua
require("aashbones").setup({
  variant = "tide",           -- color variant (default: "tide")
  transparent = false,        -- transparent backgrounds
  italic_comments = true,     -- italicize comments
  bold_keywords = true,       -- bold keywords (if, for, return, etc.)
  bold_types = true,          -- bold type names
})

vim.cmd.colorscheme("aashbones")
```

## Lualine

A matching lualine theme is included and auto-discovered:

```lua
require("lualine").setup({
  options = {
    theme = "aashbones",
  },
})
```

## Plugin Support

Includes highlight definitions for:

- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [Which-key](https://github.com/folke/which-key.nvim)
- [GitSigns](https://github.com/lewis6991/gitsigns.nvim)
- [Mason](https://github.com/williamboman/mason.nvim)
- [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- Treesitter (full highlight group coverage)
- LSP semantic tokens
- Built-in diagnostics

## Requirements

- Neovim >= 0.9.0
- `termguicolors` enabled (set automatically)
- A terminal with true color support (kitty, alacritty, wezterm, etc.)

## Credits

Inspired by [neobones](https://github.com/zenbones-theme/zenbones.nvim) by mcchrish.

## License

[MIT](LICENSE)
