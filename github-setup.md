# GitHub Repository Setup Guide

Follow these steps to upload your DSA Problem Tracker project to GitHub:

## 1. Create a New Repository on GitHub

1. Go to [GitHub](https://github.com/) and log in to your account
2. Click on the "+" icon in the top-right corner, then select "New repository"
3. Enter a repository name (e.g., "dsa-problem-tracker")
4. Add a description (optional): "A comprehensive DSA problem-tracking platform with LeetCode integration"
5. Choose "Public" or "Private" visibility as per your preference
6. Do NOT initialize the repository with a README, .gitignore, or license (we already have these files)
7. Click "Create repository"

## 2. Connect Your Local Project to GitHub

After creating the repository, you'll see instructions. Follow these commands from your local terminal or Replit Shell:

```bash
# Initialize git repository (in case it's not already initialized)
git init

# Add all files to staging
git add .

# Commit the changes
git commit -m "Initial commit: DSA Problem Tracker"

# Add the GitHub repository as a remote
git remote add origin https://github.com/yourusername/dsa-problem-tracker.git

# Push your code to GitHub
git push -u origin main
```

Note: Replace `yourusername` with your actual GitHub username and `dsa-problem-tracker` with your repository name if different.

## 3. Setting up GitHub PAT (Personal Access Token)

If you're prompted for authentication when pushing:

1. Go to GitHub's [Personal Access Tokens](https://github.com/settings/tokens) page
2. Click "Generate new token" and name it (e.g., "DSA Tracker Replit")
3. Select scopes: at minimum, check "repo" for full repository access
4. Click "Generate token"
5. Copy the token and use it as your password when pushing to GitHub

## 4. After Successful Upload

Once your code is pushed to GitHub, you can:

1. Add collaborators if needed (in repository Settings > Collaborators)
2. Set up GitHub Pages if you want to host a demo
3. Create issues for future feature development
4. Set up branch protection rules if collaborating with others

## Updating Your Code

Whenever you make changes, you can update your GitHub repository with:

```bash
git add .
git commit -m "Description of your changes"
git push
```

## Additional Resources

- [GitHub Docs](https://docs.github.com/en)
- [GitHub Flow](https://docs.github.com/en/get-started/quickstart/github-flow)
- [Collaborating with Issues and Pull Requests](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests)