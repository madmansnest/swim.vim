# Swim.vim

[![License][badge-license]][license]

A Vim/Neovim plugin that can switch the current input method when enter and quit insert mode.

Great thanks to [swim][SWIM].

## Installation

Using your favorite manager.

```vim
dein#add('colinaaa/swim.vim', { 'build', './build.sh' })
```

Or using Plug.

```vim
Plug 'colinaaa/swim.vim', { 'do': './build.sh' }
```

## Usage

All the things works well by default.

When you are leaving `insert mode`, it will record your current input method
and switch to the default one(`com.apple.keylayout.ABC` by default).

And when you re-enter the insert mode, it will restore your previous input
method automatically.

See [swim][SWIM] for more detail.

## License

The content of this repository are licensed under the MIT License unless otherwise noted.
Please read [LICENSE][license] for the detail.


[badge-license]: https://img.shields.io/badge/license-MIT-yellowgreen.svg?style=flat-square
[license]: LICENSE
[SWIM]: https://github.com/mitsuse/swim
