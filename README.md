ghqcd(1)
=======

`ghq get {repo}`で取得したリポジトリに移動するfish用コマンド

Require
--------

- ghq
- peco

Install
--------

```
fisher add nishi-yuki/ghqcd
```

Usage
------
```
ghqcd [query | project | user/project | host/user/project]
```

移動先リポジトリが特定できた場合, 対象リポジトリに直接移動します. それ以外の場合, peco(1)を使用してリポジトリを選択します. 選択時, `(back)`を選択すると移動せずに終了します.
