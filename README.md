# Swim.vim

[![License][badge-license]][license]

A Vim/Neovim plugin that can switch the current input method when enter and quit insert mode.

Great thanks to [swim][SWIM].

## Installation

Using your favorite manager.

```vim
dein#add('madmansnest/swim.vim', { 'build', './build.sh' })
```

Or using Plug.

```vim
Plug 'madmansnest/swim.vim', { 'do': './build.sh' }
```

## Usage

All the things works well by default.

When you are leaving `insert mode`, it will record your current input method
and switch to the default one(`com.apple.keylayout.ABC` by default.
Set `g:swim_default_input_method` variable to change it).

And when you re-enter the insert mode, it will restore your previous input
method automatically.

`<Leader>q` is mapped to toggle the plugin on or off. In case you want to run a macro that enters and exits insert mode multiple times, you can disable the plugin to speed up the macro execution. To change the mapping to `<leader>x`, add the following command to your `vimrc` file:

`nnoremap <leader>x :call swim#toggle()<cr>`

See [swim][SWIM] for more detail.

## License

The content of this repository are licensed under the MIT License unless otherwise noted.
Please read [LICENSE][license] for the detail.


[badge-license]: https://img.shields.io/badge/license-MIT-yellowgreen.svg?style=flat-square
[license]: LICENSE
[SWIM]: https://github.com/mitsuse/swim
