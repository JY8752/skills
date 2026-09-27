# Agent Skills

AI coding agent向けの Agent Skills をまとめたリポジトリです。各スキルは独立したディレクトリにあり、`SKILL.md` に利用条件と手順を記載しています。

## インストール

リポジトリをcloneし、`sync.sh`を実行すると、`SKILL.md`を持つ直下のディレクトリが `$HOME/.agents/skills/` にシンボリックリンクされます。

```sh
git clone https://github.com/JY8752/skills.git
cd skills
./sync.sh
```

既存のファイルや別の場所を指すリンクが同名で存在する場合、`sync.sh`は上書きせずエラーで停止します。このリポジトリが作成したリンクのうち、元のスキルが削除されたものは次回実行時に削除されます。

個別にインストールする場合は、[skills CLI](https://github.com/vercel-labs/skills)も利用できます。

## スキル一覧

| スキル | 説明 |
| --- | --- |
| [repo-skill-creator](repo-skill-creator/README.md) | 公式skill-creatorを土台に、このリポジトリでのスキル作成・更新とREADME・一覧の同期を行います。 |
| [vhs-demo-tape](vhs-demo-tape/README.md) | VHSの `.tape` デモを作成・修正し、環境があればGIFを生成します。出力先やVHS設定は引数で上書きできます。 |
