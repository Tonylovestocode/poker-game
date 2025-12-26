# 🚀 GitHub Deployment Guide - Texas Hold'em Poker Game

## Quick Setup (5 minutes)

### Step 1: Create GitHub Repository

1. Go to [GitHub.com](https://github.com) and sign in
2. Click the **"+"** icon (top right) → **"New repository"**
3. Repository settings:
   - **Name**: `poker-game` (exactly this name)
   - **Description**: "Texas Hold'em Poker Simulator built with React"
   - **Public** (so employers can see it)
   - **DON'T** check "Add README" (we already have files)
4. Click **"Create repository"**

### Step 2: Upload Your Code

You have two options:

#### Option A: Upload via GitHub Website (Easiest)

1. In your new repository, click **"uploading an existing file"**
2. Drag and drop ALL these files/folders:
   ```
   src/
   public/
   package.json
   .gitignore
   README.md
   ```
3. Add commit message: "Initial commit - Texas Hold'em Poker Game"
4. Click **"Commit changes"**

#### Option B: Using Git Command Line

```bash
# Open terminal and navigate to your project folder
cd poker-game

# Initialize git
git init

# Add all files
git add .

# Commit
git commit -m "Initial commit - Texas Hold'em Poker Game"

# Connect to GitHub (replace YOUR-USERNAME)
git remote add origin https://github.com/Tonylovestocode/poker-game.git

# Push to GitHub
git branch -M main
git push -u origin main
```

### Step 3: Deploy to GitHub Pages

1. In your GitHub repository, click **"Settings"**
2. Scroll down to **"Pages"** in the left sidebar
3. Under "Build and deployment":
   - **Source**: Select "GitHub Actions"
4. Create a new file:
   - Click **"Code"** tab
   - Click **"Add file"** → **"Create new file"**
   - Name it: `.github/workflows/deploy.yml`
   - Paste this code:

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches: [ main ]
  workflow_dispatch:

permissions:
  contents: read
  pages: write
  id-token: write

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      
      - name: Setup Node
        uses: actions/setup-node@v3
        with:
          node-version: '18'
          
      - name: Install dependencies
        run: npm install
        
      - name: Build
        run: npm run build
        
      - name: Upload artifact
        uses: actions/upload-pages-artifact@v2
        with:
          path: ./build

  deploy:
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest
    needs: build
    steps:
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v2
```

5. Commit the file (click green "Commit changes" button)

### Step 4: Wait for Deployment (2-3 minutes)

1. Go to **"Actions"** tab in your repository
2. You'll see a yellow dot → wait for it to turn green ✓
3. Your site will be live at: `https://tonylovestocode.github.io/poker-game`

## 📝 Add Live Link to Your Resume

Once deployed, add this to your resume under the Poker project:

```
Texas Hold'em Poker Simulator | React, JavaScript, Lucide Icons
Live Demo: https://tonylovestocode.github.io/poker-game
GitHub: https://github.com/Tonylovestocode/poker-game
```

## 🎯 What Employers Will See

When they visit your link, they'll see:
- ✅ **Professional live demo** they can interact with
- ✅ **Clean source code** on GitHub
- ✅ **Well-documented README** explaining your technical decisions
- ✅ **Active development** (commits, deployment workflow)

## 🔧 Making Updates Later

To update your live site:

```bash
# Make changes to your code
# Then:
git add .
git commit -m "Update: description of changes"
git push origin main

# GitHub Actions will automatically redeploy (takes 2-3 minutes)
```

## 📂 Project Structure (Make sure you have this)

```
poker-game/
├── src/
│   ├── App.js
│   ├── PokerGame.js
│   ├── index.js
│   └── index.css
├── public/
│   └── index.html
├── package.json
├── .gitignore
└── README.md
```

## 🆘 Troubleshooting

**Problem: Site shows 404**
- Check that repository name is exactly `poker-game`
- Make sure GitHub Pages is enabled in Settings
- Wait 5 minutes - sometimes takes time to propagate

**Problem: Build fails**
- Check the "Actions" tab for error details
- Make sure all files are uploaded correctly
- Verify `package.json` has correct dependencies

**Problem: Blank page**
- Check browser console (F12) for errors
- Make sure `homepage` in package.json matches your GitHub username

## 🎨 Customization Ideas (After Deployment)

Once live, you can enhance it:
- Add your name/branding in the header
- Add Google Analytics to track views
- Add more game modes (tournaments, different bet structures)
- Implement sound effects
- Add keyboard shortcuts

## 📧 Share Your Link

Add your live demo to:
- ✅ Resume (under project description)
- ✅ LinkedIn projects section
- ✅ GitHub profile README
- ✅ Job applications
- ✅ Email signature when applying to gaming companies

---

**Your live demo will be at**: `https://tonylovestocode.github.io/poker-game`

Good luck with your Zynga application! 🎮
