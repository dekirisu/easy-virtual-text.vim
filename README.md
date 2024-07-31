<h1 style="text-align:center">Easy Virtual Text for Vim</h1>
A simple plugin to make adding virtual text a bit easier using a 2d array. The index in the 2nd dimension determines if the text is inserted `before`, `after` or to the very `right` of the window. The highlight group `VText` determines the text styling.

> [!TIP]
> 🦆 You can use it to add emojis too, if your terminal setup allows it

## Example
```viml
let g:vtexts = [
    \["hello ","world"],
    \["🐳","emojis","🐪","🦀"],
    \["🙀","#\[.*]","😹"]
]
au ColorScheme * hi VText guifg=#ff0000
```

## Installation

If you don’t have a plugin manager of choice I recommend [vim-plug](https://github.com/junegunn/vim-plug):

```viml
Plug 'dekirisu/easy-virtual-text.vim'
```
