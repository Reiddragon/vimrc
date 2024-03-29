# Reiddragon's vimrc

Just my vimrc, bunch of addons I find useful, and some themes I like to rotate between. I mostly use it with Vim (not Neovim) in Kitty or GVim, with Hack Nerd Font Mono, or Gohu Nerd Font Mono, on Linux, so there's a bias towards those combos.


![](img/vimrc.png)


## Installation
Clone the repo to:

- `~/.vim/` on Linux, \*BSD, macOS
- `~/config/settings/vim/` on HaikuOS
- `$HOME\vimfiles` on Windows (usually `C:\Users\[username]\vimfiles`)

I use [vim-plug](https://github.com/junegunn/vim-plug) to manage plugins, so to install all extensions, install Plug then simply run

```
:PlugInstall
```

## Extensions I use
- Themes
    - [Base16](https://github.com/chriskempson/base16-vim)
    - [Code Dark](https://github.com/tomasiser/vim-code-dark)
    - [C64](https://github.com/tssm/c64-vim-color-scheme)
    - [Embark](https://github.com/embark-theme/konsole/)
    - [Kyoto Night](https://github.com/laniusone/kyotonight.vim)
    - [Gruvbox](https://github.com/morhetz/gruvbox)
    - [Iceberg](https://github.com/cocopon/iceberg.vim)
    - [PaperColor](https://github.com/NLKNguyen/papercolor-theme)
    - [Pencil](https://github.com/preservim/vim-colors-pencil)
    - [Substrata](https://github.com/arzg/vim-substrata)
    - [Wal](https://github.com/dylanaraps/wal.vim) - for use with [Pywal](https://github.com/dylanaraps/pywal/) (doesn't work with `termguicolours` or GVim `:(`)
    - [Zenburn](https://github.com/jnurmine/Zenburn)

- Additional Language Support Plugins
    - [Polyglot](https://github.com/sheerun/vim-polyglot) - Ash durbatulûk, ash gimbatul, ash thrakatulûk, agh burzum-ishi krimpatul
    - [Hy](https://github.com/hylang/vim-hy) - it's like Python but lispy!
    - [Org Mode](https://github.com/jceb/vim-orgmode)
    - [vim-pandoc](https://github.com/vim-pandoc/vim-pandoc) and [vim-pandoc-syntax](https://github.com/vim-pandoc/vim-pandoc-syntax)

- Other Plugins
    - [Airline](https://github.com/vim-airline/vim-airline) and [Airline Themes](https://github.com/vim-airline/vim-airline-themes) - fancy statusline
    - [Auto Pairs](https://github.com/jiangmiao/auto-pairs) - steroids for bracket pairs
    - [Better Whitespace](https://github.com/ntpeters/vim-better-whitespace) - Whitespace trimming and highlighting
    - [EditorConfig](https://github.com/editorconfig/editorconfig-vim)
    - [eunuch](https://github.com/tpope/vim-eunuch) - integration with UNIXy tools
    - [DevIcons](https://github.com/ryanoasis/vim-devicons) - add nerdfont icons to NERDTree, Airline and other plugins
    - [Fugitive](https://github.com/tpope/vim-fugitive) - fancy git integration
    - [Hexmode](https://github.com/fidian/hexmode) - convenience wrapper around `xxd`
    - [Indent Line](https://github.com/yggdroot/indentline) - indentation hints
    - [NERDCommenter](https://github.com/preservim/nerdcommenter) - steroids for comments
    - [NERDTree](https://github.com/preservim/nerdtree) - great tree file view
    - [Pencil](https://github.com/preservim/vim-pencil) - to make Vim nicer to use for writing prose
    - [Signify](https://github.com/mhinz/vim-signify) - adds indicators for changes since the last git commit, also has a great diff thingy
    - [SLIMV](https://github.com/kovisoft/slimv) - for Lispy Development
        - also includes [Paredit](https://github.com/kovisoft/paredit) for editing S-expressions, use this one instead if you don't care about the fancy repl integrations and only need the structured editing tools
    - [Supertab](https://github.com/ervandew/supertab) - nice on-demand tab-completion, especially nice with C and Python
    - [Surround](https://github.com/tpope/vim-surround)
    - [Startify](https://github.com/mhinz/vim-startify) - fancy Vim start page, also has some sesison saving na dloading
    - [Tabular](https://github.com/godlygeek/tabular) - for aligning stuffs
    - [Terminus](https://github.com/wincent/terminus) - some goodies to improve The Vim Experience(TM) in a terminal
    - [Thematic](https://github.com/preservim/vim-thematic) - Fancier theme management


