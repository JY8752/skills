# ローカル実装レビュー

`review-implementation` は、作業中のリポジトリの変更をレビューし、ファイルごとの解説、指摘、検証結果をローカルの静的HTMLレポートにまとめるスキルです。レビュー後に実装を修正したり、レポートを公開したりする用途では使いません。

## 使い方

レビューを始める基準コミットが分かる場合は、一緒に伝えます。

```text
Use $review-implementation to review the changes since <base-commit> and create a local HTML report.
```

レポートは対象リポジトリの `.agents/review/` に生成されます。必要な検証コマンドやレビュー基準は対象リポジトリの `AGENTS.md` と参照先の指示に従います。詳しい手順は [SKILL.md](SKILL.md) を参照してください。
