#!/bin/bash

set -euo pipefail

BASEDIR=$(pwd)
echo "BASEDIR: $BASEDIR"

cd /tmp

### 安裝額外的工具
echo "🔧 安裝開發工具..."

### 更新套件列表
sudo apt-get update

### 安裝必要的依賴
sudo apt-get install -y curl wget unzip jq git vim nano

### 安裝 Bun (JavaScript/TypeScript 執行環境)
curl -fsSL https://bun.com/install | bash


### 安裝 Claude CLI
#curl -fsSL https://claude.ai/install.sh | bash

### 安裝 Gemini CLI
#npm install -g @google/gemini-cli

### 安裝 OpenAI Codex CLI
#npm i -g @openai/codex

### 安裝 GitHub Copilot CLI
#curl -fsSL https://gh.io/copilot-install | bash

### 安裝 Kiro CLI
#curl -fsSL https://cli.kiro.dev/install | bash

### 安裝 opencode CLI
#curl -fsSL https://opencode.ai/install | bash



### 設定 Git 全域設定（如果需要）
if [ ! -f ~/.gitconfig ]; then
    echo "⚙️ 設定 Git 全域設定..."
    git config --global init.defaultBranch main
    git config --global pull.rebase false
    git config --global core.autocrlf input
    git config --global core.editor vim
fi




### 重新載入 bashrc
source ~/.bashrc

echo ""
echo "✅ Dev Container 設定完成！"
echo ""
echo "🛠️ 可用的工具："
echo ""
echo "📚 使用說明："
echo ""
echo "🎉 開始您的 開發之旅！"
