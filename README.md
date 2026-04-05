# aashbones

A dark Neovim colorscheme with selective vibrancy — keywords, functions, types, and parameters pop while everything else stays muted. Inspired by [neobones](https://github.com/zenbones-theme/zenbones.nvim).

## Variants

### tide (default)

Cool, deep oceanic dark theme. Dark blue-green background with vibrant syntax accents.

- Background: `#0F191F` (deep ocean)
- Keywords: muted lavender | Functions: golden yellow | Types: cyan/teal
- Strings: olive green (muted) | Operators: gray (muted)

### ember

Warm charcoal background with amber/red-shifted accents. Cozy, fireside feel.

- Background: `#1A1210` (dark charcoal)
- Keywords: warm terracotta | Functions: warm gold | Types: burnt sienna
- Strings: dry sage | Operators: warm gray

### frost

Cool blue-silver tones with a crisp, icy aesthetic.

- Background: `#0E1418` (dark ice)
- Keywords: ice blue-violet | Functions: silver-blue | Types: pale cyan
- Strings: cool sage | Operators: cool gray

### dune

Warm sandy/earthy tones — desert at twilight.

- Background: `#181410` (dark sand)
- Keywords: warm clay | Functions: golden sand | Types: terracotta
- Strings: sage brush | Operators: sand gray

### ash

Near-monochrome with minimal color. Maximum subtlety for distraction-free coding.

- Background: `#141414` (neutral dark)
- Keywords: faint lavender | Functions: warm off-white | Types: faint teal-gray
- Strings: barely-green gray | Operators: neutral gray

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
