# UiPix Site — Easy Setup & Editing Guide

A step-by-step guide for making changes to the UiPix portfolio site on a Mac, even if you're not a developer.

---

## What You'll Need

- A Mac computer
- An internet connection
- About 15 minutes for initial setup (one-time only)

---

## Part 1: One-Time Setup

### Step 1: Install VS Code

1. Go to https://code.visualstudio.com
2. Click the big **Download for Mac** button
3. Open the downloaded file and drag VS Code into your **Applications** folder
4. Open VS Code from Applications

### Step 2: Install Node.js

1. Go to https://nodejs.org
2. Download the **LTS** version (the green button)
3. Open the downloaded file and follow the installer
4. When it's done, restart VS Code

### Step 3: Install Claude Code Extension

1. Open VS Code
2. Click the **Extensions** icon in the left sidebar (it looks like 4 squares)
3. Search for **"Claude Code"**
4. Click **Install** on the one by Anthropic
5. After install, you'll see a Claude icon in the left sidebar
6. Click it and sign in with your Anthropic account

### Step 4: Download the Project

1. In VS Code, press `Cmd + Shift + P` to open the command palette
2. Type **"Git: Clone"** and select it
3. Paste this URL: `https://github.com/vibhuis-es/uipix-site`
4. Choose a folder on your Mac where you want to save it (e.g., Desktop or Documents)
5. Click **Open** when it asks to open the cloned repository

### Step 5: Install Project Dependencies

1. In VS Code, open the Terminal: **Terminal → New Terminal** (or press `` Ctrl + ` ``)
2. Type this command and press Enter:
   ```
   npm install
   ```
3. Wait for it to finish (about 30 seconds)

---

## Part 2: Making Changes

### Starting the Local Preview

Every time you want to make changes, start the local preview first:

1. Open the project in VS Code
2. Open Terminal (`Ctrl + backtick`)
3. Type and press Enter:
   ```
   npm run dev
   ```
4. You'll see a message with a URL like `http://localhost:4321`
5. Hold `Cmd` and click the URL to open it in your browser
6. **Keep this terminal running** — your site preview will update automatically as you make changes

### Using Claude Code to Make Changes

This is the easiest way to edit the site. Instead of editing code yourself, just tell Claude what you want in plain English.

1. Click the **Claude** icon in the left sidebar of VS Code
2. Type your request in natural language, for example:

**Example requests you can give Claude:**

| What you want | What to type |
|---|---|
| Change text on homepage | "Change the homepage tagline to 'Designing experiences that matter'" |
| Update your bio | "Update the about page bio to say [your new text]" |
| Change contact email | "Change the contact email to newemail@gmail.com" |
| Add a new skill | "Add 'Motion Design' to the design skills list on the about page" |
| Update work experience | "Add a new job to my experience: Senior Designer at Apple, Jan 2024 to Present, San Francisco" |
| Change colors | "Change the accent color from blue to purple" |
| Fix something | "The image on the about page is not showing, can you fix it?" |
| Update footer | "Change the footer copyright to 2027" |
| Hide/show a project | "Show Symbio6 on the homepage again" |

3. Claude will make the changes and explain what it did
4. Check your browser preview to see the changes
5. Once you're happy with the changes, tell Claude to save and deploy:

**Commands to tell Claude after making changes:**

| What to say | What it does |
|---|---|
| "commit and push" | Saves your changes and deploys to the live site |
| "commit and push with message: updated bio" | Same, but with a custom description of what changed |
| "undo the last change" | Reverts the most recent edit Claude made |
| "revert the last commit" | Undoes the last saved/committed change |
| "show me what changed" | Shows a summary of all pending changes before committing |

6. After you say "commit and push", Cloudflare will automatically rebuild and deploy (takes 1-2 minutes)
7. Check your live site to confirm the changes are live

### Adding New Images

1. Put your new images in the `public/images/` folder
   - For a case study: `public/images/your-project-name/`
   - For general images: `public/images/`
2. Use `.webp` format for best performance (you can convert at https://squoosh.app)
3. Tell Claude: "Use the new image I added at /images/your-image.webp for [wherever you want it]"

### Using the CMS (Content Manager)

For basic content edits, there's also a visual CMS:

1. Make sure the dev server is running (`npm run dev`)
2. In a separate terminal tab, run:
   ```
   npx decap-server
   ```
3. Go to `http://localhost:4321/admin/index.html` in your browser
4. Edit content visually (case study metadata, site settings)

**Note:** The CMS manages content files, but the main pages are built with components. For layout or design changes, use Claude Code instead.

---

## Part 3: Common Tasks

### Updating the Live Site

After making changes:

1. Tell Claude: **"commit and push the changes"**
2. Or do it manually in Terminal:
   ```
   git add -A
   git commit -m "describe your change"
   git push
   ```
3. Cloudflare automatically rebuilds and deploys (takes about 1-2 minutes)
4. Check your live site at https://uipix.pages.dev (or your custom domain)

### Pulling Latest Changes

If someone else made changes (or you edited on another computer):

1. Open Terminal in VS Code
2. Run:
   ```
   git pull
   ```

### If Something Goes Wrong

**Site preview won't start:**
- Close the terminal and open a new one
- Run `npm install` then `npm run dev`

**Changes not showing in browser:**
- Hard refresh: `Cmd + Shift + R`
- Or stop the dev server (`Ctrl + C` in terminal) and start it again

**Push failed:**
- Run `git pull` first, then try pushing again
- If there are conflicts, tell Claude: "help me resolve the git conflicts"

**Want to undo changes:**
- Tell Claude: "undo the last change" or "revert the last commit"

---

## Project Structure (for reference)

```
uipix-site/
├── src/
│   ├── pages/           ← Main pages (index, about, contact, etc.)
│   │   └── work/        ← Case study pages
│   ├── components/      ← Reusable building blocks
│   ├── layouts/         ← Page templates
│   └── styles/          ← Global styles
├── public/
│   └── images/          ← All images go here
└── package.json         ← Project configuration
```

You don't need to memorize this — just tell Claude what you want and it will find the right files.

---

## Quick Reference

| Task | Command |
|---|---|
| Start preview | `npm run dev` |
| Stop preview | `Ctrl + C` in terminal |
| Install dependencies | `npm install` |
| Start CMS | `npx decap-server` |
| Save & deploy | Tell Claude: "commit and push" |
| Pull updates | `git pull` |
