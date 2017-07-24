cygbin.vim
==========

ctags などのコマンドラインツールを Windows の gvim から使いたいけど、インストールが大変面倒です。

そこで、このプラグインを導入すると自動的に cygwin/bin に PATH が通され、vim からコマンドラインツールが使えるようになります。

dein で toml の場合は以下のように設定。

```
[[plugins]]
repo = 'nunun/cygbin.vim'
if = "has('win32')"
```
