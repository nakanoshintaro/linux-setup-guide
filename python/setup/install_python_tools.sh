#!/bin/bash

set -e

echo "🐍 Python と開発ツールをインストールします..."

sudo apt update
sudo apt install -y python3 python3-pip python3-venv python3-setuptools python3-wheel python3-dev     build-essential ipython black flake8 mypy

echo "✅ Python 開発環境のインストールが完了しました。"
