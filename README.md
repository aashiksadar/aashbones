# aashbones

A dark Neovim colorscheme with selective vibrancy — keywords, functions, types, and parameters pop while everything else stays muted. Ships with multiple variants ranging from monochrome to tactical.

Inspired by [neobones](https://github.com/zenbones-theme/zenbones.nvim).

## Variants

Each variant can be activated via `:colorscheme aashbones-<name>` or by setting `variant` in `setup()`.

### void (default)

Pure black monochrome. Minimal color, maximum focus.

- Background: `#000000` (pure black)
- Keywords: bright white | Functions: warm off-white | Types: cool gray
- Strings: dark muted green | Operators: dark gray

### tide

Cool, deep oceanic dark theme with vibrant syntax accents.

- Background: `#0F191F` (deep ocean)
- Keywords: muted lavender | Functions: golden yellow | Types: cyan/teal
- Strings: olive green | Operators: muted gray

### frost

Cool blue-silver tones with a crisp, icy feel.

- Background: `#0E1418` (dark ice)
- Keywords: ice violet | Functions: pale gold | Types: bright cyan
- Strings: cool sage | Operators: cool gray

### petal

Warm rose and gold on dark plum. Inspired by Rosé Pine.

- Background: `#191724` (dark plum)
- Keywords: rose pink | Functions: warm peach | Types: bright mint
- Strings: muted sage | Operators: lavender gray

### stealth

Military/space tech HUD aesthetic. Precise, functional colors.

- Background: `#0B0E14` (dark cockpit)
- Keywords: HUD amber | Functions: tactical green | Types: steel blue
- Strings: olive drab | Operators: gunmetal

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "aashiksadar/aashbones",
  lazy = false,
  priority = 1000,
  config = function()
    require("aashbones").setup({
      variant = "void",       -- "void", "tide", "frost", "petal", "stealth"
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

## Switching Variants

You can switch variants on the fly without restarting Neovim:

```vim
:colorscheme aashbones-tide
:colorscheme aashbones-frost
:colorscheme aashbones-petal
:colorscheme aashbones-stealth
:colorscheme aashbones-void
:colorscheme aashbones          " uses variant from setup(), default: void
```

## Configuration

Call `setup()` **before** setting the colorscheme:

```lua
require("aashbones").setup({
  variant = "void",           -- color variant (default: "void")
  transparent = false,        -- transparent backgrounds
  italic_comments = true,     -- italicize comments
  bold_keywords = true,       -- bold keywords (if, for, return, etc.)
  bold_types = true,          -- bold type names
})

vim.cmd.colorscheme("aashbones")
```

All options are optional. Defaults are shown above.

## Lualine

A matching lualine theme is included and adapts to the active variant:

```lua
require("lualine").setup({
  options = {
    theme = "aashbones",
  },
})
```

## Syntax Highlighting Philosophy

Aashbones separates syntax into **signal** (vibrant) and **noise** (muted):

**Signal** — elements you scan for while reading code:
- Keywords (`if`, `for`, `return`, `const`)
- Function names and calls
- Type annotations
- Constants and literals
- Function parameters
- Built-in functions (via LSP semantic tokens)
- Method calls (distinct from standalone function calls)

**Noise** — structural elements that should recede:
- Strings
- Operators and punctuation
- Brackets and delimiters
- Comments

This makes it easier to quickly identify control flow and data structures without visual clutter.

## Plugin Support

Includes highlight definitions for:

- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [Which-key](https://github.com/folke/which-key.nvim)
- [GitSigns](https://github.com/lewis6991/gitsigns.nvim)
- [Mason](https://github.com/williamboman/mason.nvim)
- [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- Treesitter (full `@` highlight group coverage)
- LSP semantic tokens (function/method/type distinction via `@lsp.type.*`)
- Built-in diagnostics (virtual text, underlines, signs)

## Requirements

- Neovim >= 0.9.0
- `termguicolors` enabled (set automatically)
- A terminal with true color support (kitty, alacritty, wezterm, etc.)

## Credits

Inspired by [neobones](https://github.com/zenbones-theme/zenbones.nvim) by mcchrish.

## License

[CC BY-NC 4.0](LICENSE) — free to use, modify, and distribute; not for commercial sale.
