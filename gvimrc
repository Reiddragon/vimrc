" Settings for GVim
" (Doubt I'll use this except for a few edge cases)

" Quick note on `guifont`: this is stated in the vim help files but since I
" know many of you won't read it, here it is in layman's terms: the format for
" the `guifont` option differs between OSes, this one bellow is Pango, as used
" by Linux GVim, other GUIs on other platforms (like Windows GVim) may not use
" this format, instead using a different, sometimes rather awkward format, see
" `:h gui-font` for details on how to set it properly for your variant of GVim

" also tip: setting `guifont=*` will bring up a selector, you can select your
" prefered font that way, then querry the exact value of `guifont` and put
" that in your gvimrc.
" Don't say you didn't learn anything reading this unless you already knew
" this in which case yeah, you probably didn't learn anything :P
set guifont=Hack\ Nerd\ Font\ Mono\ 10.3  " Font
set guioptions=!cdi   " Other GUI Options

