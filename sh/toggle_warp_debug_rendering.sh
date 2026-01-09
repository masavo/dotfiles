#!/bin/bash

# Warp の Bundle ID
BUNDLE_ID="dev.warp.Warp"
KEY="EnableDebugRendering"

# 現在の設定値を取得
CURRENT=$(defaults read "$BUNDLE_ID" "$KEY" 2>/dev/null)

# ON/OFFを切り替える
if [ "$CURRENT" == "1" ]; then
  echo "🔧 Warp: EnableDebugRendering を OFF に切り替えます..."
  defaults delete "$BUNDLE_ID" "$KEY"
else
  echo "🔧 Warp: EnableDebugRendering を ON に切り替えます..."
  defaults write "$BUNDLE_ID" "$KEY" -bool true
fi

# Warp 再起動を促す
echo "✅ 設定を切り替えました。Warp を再起動してください。"

