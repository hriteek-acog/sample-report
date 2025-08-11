#!/bin/bash

echo "🚀 GitHub Pages Deployment Setup Script"
echo "======================================="

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📁 Initializing Git repository..."
    git init
    echo "✅ Git repository initialized"
else
    echo "✅ Git repository already exists"
fi

# Check if remote origin exists
if ! git remote get-url origin > /dev/null 2>&1; then
    echo ""
    echo "⚠️  No remote origin found. Please add your GitHub repository:"
    echo "   git remote add origin https://github.com/hriteek-acog/sample-report.git"
    echo ""
    echo "   Replace YOUR_USERNAME and YOUR_REPO_NAME with your actual values"
    echo ""
else
    echo "✅ Remote origin configured"
fi

# Add all files
echo "📦 Adding files to git..."
git add .

# Check if there are changes to commit
if git diff --staged --quiet; then
    echo "✅ No changes to commit"
else
    echo "💾 Committing changes..."
    git commit -m "Initial commit: Healthcare Intelligence Dashboard

- Add responsive HTML dashboard
- Include GitHub Actions workflow for deployment
- Add README and configuration files"
    echo "✅ Changes committed"
fi

echo ""
echo "📋 Next Steps:"
echo "1. Create a new repository on GitHub (if not done already)"
echo "2. Add the remote origin (if not done already):"
echo "   git remote add origin https://github.com/hriteek-acog/sample-report.git"
echo "3. Push to GitHub:"
echo "   git branch -M main"
echo "   git push -u origin main"
echo "4. Enable GitHub Pages in repository settings:"
echo "   - Go to Settings > Pages"
echo "   - Source: GitHub Actions"
echo "   - The workflow will deploy automatically on push to main branch"
echo ""
echo "🌐 Your site will be available at:"
echo "   https://hriteek-acog.github.io/sample-report"
echo ""
echo "✨ Happy deploying!"
