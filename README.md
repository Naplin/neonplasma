# neonplasma.nvim

A tweaked version of **Oxocarbon.nvim** (https://github.com/Naplin/oxocarbon.nvim)

## Features

- Support for popular plugins, such as Lsp, Treesitter, and Semantic Highlighting **(same as Oxocarbon)**
- Fast and Featureful. Supports all the highlights you'll ever need without making a dent on startuptime

### Plugin support

The colorscheme explicitly adds highlights for the following plugins:

- Vim Diagnostics
- Vim LSP
- Nvim-Treesitter
- Telescope
- Nvim-Notify
- Nvim-Cmp
- NvimTree
- Neogit
- Gitsigns
- Hydra

And many others should "just work!"

## Install

The colorscheme requires the latest stable or nightly neovim (> `v0.7.0`)

### Packer.nvim

```lua
use {'Naplin/neonplasma.nvim'}
```
### Lazy.nvim
```lua
return { 
  "Naplin/neonplasma.nvim"
  -- Add in any other configuration; 
  --   event = foo, 
  --   config = bar
  --   end,
}, 
```
### Usage

For neovim nightly users:

```lua
vim.opt.background = "dark" -- set this to dark or light
vim.cmd.colorscheme "neonplasma"
```

For neovim stable users:

```lua
vim.opt.background = "dark" -- set this to dark or light
vim.cmd("colorscheme neonplasma")
```

You can also add a transparent background by adding the following lines after `colorscheme`:
```lua
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
```

For nyoom.nvim users:
Nyoom comes bundled with a version of neonplasma. Enable the `ui.nyoom` module

## Development

You must install [hotpot](https://github.com/rktjmp/hotpot.nvim), since is what is used for compiling the fennel code.

### Workflow

* Fork the project
* Make changes in the files under `fnl/`
* Compile your changes by running `:Fnlfile make.fnl`
* Make a PR

## License

The project is licensed under the MIT license
