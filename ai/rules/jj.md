# Jujutsu (jj) Rules

## 基本

- **gitコマンドは使わない** → `jj`を使用
- コミットメッセージ: Conventional Commits形式

## 主要コマンド

jj status # 状態確認
jj diff # 差分表示
jj describe -m "msg" # コミットメッセージ設定
jj new # 新しい変更セット作成
jj bookmark set main -r @ # ブックマーク設定
jj git push # リモートにプッシュ
