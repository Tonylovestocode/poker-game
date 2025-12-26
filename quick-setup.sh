#!/bin/bash

echo "🎮 Texas Hold'em Poker Game - Quick Setup Script"
echo "================================================"
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first:"
    echo "   https://git-scm.com/downloads"
    exit 1
fi

echo "✓ Git is installed"
echo ""

# Get GitHub username
read -p "Enter your GitHub username (default: Tonylovestocode): " github_username
github_username=${github_username:-Tonylovestocode}

echo ""
echo "📝 Setup Instructions:"
echo ""
echo "1. Go to https://github.com/new"
echo "2. Repository name: poker-game"
echo "3. Make it Public"
echo "4. DON'T add README, .gitignore, or license"
echo "5. Click 'Create repository'"
echo ""
read -p "Press ENTER when you've created the repository..."

echo ""
echo "🚀 Initializing Git and pushing to GitHub..."
echo ""

# Initialize git if not already done
if [ ! -d .git ]; then
    git init
    echo "✓ Git initialized"
fi

# Add all files
git add .
echo "✓ Files staged"

# Commit
git commit -m "Initial commit - Texas Hold'em Poker Simulator"
echo "✓ Changes committed"

# Add remote
git remote remove origin 2>/dev/null
git remote add origin "https://github.com/$github_username/poker-game.git"
echo "✓ Remote added"

# Push to GitHub
git branch -M main
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ SUCCESS! Your code is on GitHub!"
    echo ""
    echo "📋 Next Steps:"
    echo "1. Go to: https://github.com/$github_username/poker-game/settings/pages"
    echo "2. Under 'Build and deployment' → Source: Select 'GitHub Actions'"
    echo "3. Wait 2-3 minutes for deployment"
    echo "4. Your live site will be at: https://$github_username.github.io/poker-game"
    echo ""
    echo "🎯 Add this to your resume:"
    echo "   Live Demo: https://$github_username.github.io/poker-game"
    echo "   GitHub: https://github.com/$github_username/poker-game"
    echo ""
else
    echo ""
    echo "❌ Push failed. You may need to authenticate with GitHub."
    echo ""
    echo "Try this:"
    echo "1. Generate a Personal Access Token at: https://github.com/settings/tokens"
    echo "2. Use the token as your password when Git asks"
    echo ""
fi
