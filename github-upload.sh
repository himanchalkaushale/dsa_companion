#!/bin/bash

# This script helps you upload your DSA Problem Tracker to GitHub
# Run it from the Replit Shell with: bash github-upload.sh

echo "==== DSA Problem Tracker GitHub Upload Script ===="
echo ""
echo "This script will help you upload your project to GitHub."
echo "Make sure you have already created a repository on GitHub."
echo ""

# Ask for GitHub username
read -p "Enter your GitHub username: " GITHUB_USERNAME

# Ask for repository name
read -p "Enter your repository name (e.g., dsa-problem-tracker): " REPO_NAME

# Confirm GitHub remote URL
GITHUB_URL="https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"
echo ""
echo "Your GitHub repository URL will be: $GITHUB_URL"
read -p "Is this correct? (y/n): " CONFIRM

if [ "$CONFIRM" != "y" ]; then
  echo "Aborting script. Please run again with the correct information."
  exit 1
fi

echo ""
echo "==== Adding files to Git ===="
git add .

echo ""
echo "==== Committing changes ===="
read -p "Enter a commit message (or press Enter for default): " COMMIT_MSG
if [ -z "$COMMIT_MSG" ]; then
  COMMIT_MSG="Initial commit: DSA Problem Tracker"
fi

git commit -m "$COMMIT_MSG"

echo ""
echo "==== Setting up GitHub remote ===="
# Check if origin remote already exists
if git remote | grep -q "origin"; then
  echo "Remote 'origin' already exists. Updating URL..."
  git remote set-url origin $GITHUB_URL
else
  echo "Adding 'origin' remote..."
  git remote add origin $GITHUB_URL
fi

echo ""
echo "==== Pushing to GitHub ===="
echo "When prompted, enter your GitHub credentials."
echo "If you have 2FA enabled, use a Personal Access Token instead of your password."
echo ""
echo "Pushing to GitHub..."
git push -u origin main

echo ""
echo "==== Done ===="
echo "Check your GitHub repository at: https://github.com/$GITHUB_USERNAME/$REPO_NAME"
echo ""
echo "If you encounter any authentication issues, please create a Personal Access Token:"
echo "1. Go to https://github.com/settings/tokens"
echo "2. Click 'Generate new token'"
echo "3. Select 'repo' scope"
echo "4. Use the token as your password when pushing"