# VHSデモテープ

`vhs-demo-tape` は、操作手順をVHSの `.tape` ファイルにして、ターミナルデモを録画するためのスキルです。VHSと必要な依存ツールが利用できる場合は、GIFの生成まで行います。

## 使い方

エージェントにスキル名と録画したい操作を伝えます。

```text
Use $vhs-demo-tape to record the quickstart workflow.
```

出力先やVHS設定も引数で指定できます。

```text
Use $vhs-demo-tape to record the quickstart workflow output=.vhs/quickstart.gif FontSize=24 Theme="Catppuccin Mocha".
```

設定値は指定したものだけ上書きされます。詳しい既定値や作成時のルールは [SKILL.md](SKILL.md) を参照してください。
