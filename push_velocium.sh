#!/bin/bash

# ====== CONFIGURATION ======
GIT_REPO="https://github.com/Velociumcore/velocium.git"
COMMIT_NAME="Satoshi"
COMMIT_EMAIL="anon@velocium.org"
BRANCH="main"
# ============================

echo "🚀 Initializing anonymous GitHub push..."

git config --global user.name "$COMMIT_NAME"
git config --global user.email "$COMMIT_EMAIL"

git init
git add .
git commit -m "🌩️ Initial commit — Velocium Chain lives"

git branch -M $BRANCH
git remote add origin $GIT_REPO
git push -u origin $BRANCH

echo "✅ Velocium Chain code pushed successfully!"
