# Deployment Guide - UiPix Portfolio

This guide covers deploying the UiPix portfolio to Cloudflare Pages with Decap CMS support.

## Table of Contents

1. [Quick Start (GitHub Integration)](#quick-start-github-integration)
2. [Manual Deployment (Wrangler)](#manual-deployment-wrangler)
3. [Decap CMS Configuration](#decap-cms-configuration)
4. [Domain Setup](#domain-setup)
5. [Post-Deployment](#post-deployment)

## Quick Start (GitHub Integration)

This is the easiest method for ongoing deployments with automatic builds on every push.

### Step 1: Prepare Your Repository

```bash
# Initialize git if not already done
git init
git add .
git commit -m "Initial commit: UiPix portfolio"

# Add your remote (replace with your GitHub repo URL)
git remote add origin https://github.com/yourusername/uipix-site.git
git push -u origin main
```

### Step 2: Connect to Cloudflare Pages

1. Log in to [Cloudflare Dashboard](https://dash.cloudflare.com)
2. Navigate to **Pages** (left sidebar)
3. Click **Create a project**
4. Select **Connect to Git**
5. Authorize Cloudflare to access your GitHub account
6. Select your repository (`uipix-site`)
7. Click **Begin setup**

### Step 3: Configure Build Settings

- **Project name**: `uipix-portfolio` (or your preference)
- **Production branch**: `main`
- **Build command**: `npm run build`
- **Build output directory**: `dist`

Click **Save and Deploy**. Your first build will start automatically.

### Step 4: Set Up Decap CMS Authentication

For Decap CMS to work, you need GitHub OAuth:

1. Go to [GitHub Developer Settings](https://github.com/settings/developers)
2. Click **New OAuth App**
3. Fill in the following:
   - **Application name**: `UiPix Portfolio CMS`
   - **Homepage URL**: `https://yourdomain.com` (your Cloudflare Pages URL)
   - **Authorization callback URL**: `https://yourdomain.com/auth`
4. Copy the **Client ID** and generate a **Client Secret**
5. Store these securely (you'll need them in the next step)

### Step 5: Update Decap CMS Configuration

Edit `public/admin/config.yml`:

```yaml
backend:
  name: github
  repo: yourusername/uipix-site
  branch: main
  auth_endpoint: /auth
```

Update `src/pages/contact.astro` if using a different form service:

```javascript
// Line in contact form
action="https://formspree.io/f/YOUR_FORM_ID"
```

Get your Formspree form ID from [formspree.io](https://formspree.io) by creating a new form.

### Step 6: Deploy Decap CMS Authentication Service

Decap CMS needs a backend authentication service. Use one of these options:

**Option A: Use Netlify Identity (Free)**
- Deploy your site to Netlify (free tier available)
- Use Netlify Identity for Decap CMS authentication
- Keep Cloudflare Pages for production

**Option B: Use GitHub OAuth Directly**
- Add GitHub OAuth handler at `/auth` route
- This requires a serverless function

**Option C: Deploy to Vercel (Free)**
- Use Vercel's Decap CMS integration
- Vercel provides built-in GitHub OAuth support

For simplicity, we recommend **Option A** (Netlify for CMS, Cloudflare for production).

## Manual Deployment (Wrangler)

If you prefer manual deployments:

### Step 1: Install Wrangler

```bash
npm install -g @cloudflare/wrangler
```

### Step 2: Authenticate

```bash
wrangler login
```

This opens a browser window to authorize Wrangler with your Cloudflare account.

### Step 3: Update Wrangler Configuration

Edit `wrangler.toml`:

```toml
name = "uipix-portfolio"
type = "javascript"
main = "src/index.js"
site = { bucket = "dist" }

[env.production]
route = "yourdomain.com/*"
zone_id = "YOUR_ZONE_ID"  # Get from Cloudflare Pages dashboard
account_id = "YOUR_ACCOUNT_ID"  # Get from Cloudflare Pages dashboard
```

### Step 4: Build and Deploy

```bash
npm run build
wrangler pages deploy dist
```

Your site will be available at the provided URL.

## Decap CMS Configuration

### Backend Options

**GitHub (Recommended for Private Repos)**
```yaml
backend:
  name: github
  repo: yourusername/uipix-site
  branch: main
```

**Test Mode (For Development)**
```yaml
backend:
  name: test
```

### Media Storage

By default, images are stored in `public/images`. To use Cloudflare R2 for images:

1. Create an R2 bucket in Cloudflare
2. Update `public/admin/config.yml`:
```yaml
media_folder: "images"
public_folder: "https://your-bucket.example.com"
```

## Domain Setup

### Point Your Domain to Cloudflare Pages

1. In **Cloudflare Dashboard** → **Pages** → Select your project
2. Go to **Settings** → **Domains**
3. Click **Add a domain**
4. Follow the prompts to add your domain (e.g., `uipix.dev`)

If using an external registrar:
1. Update nameservers to Cloudflare's nameservers:
   - `ethan.ns.cloudflare.com`
   - `gloria.ns.cloudflare.com`

2. Wait for DNS propagation (typically 5-15 minutes)

## Post-Deployment

### Verify Deployment

1. Visit your Cloudflare Pages URL
2. Test all pages work correctly
3. Check Lighthouse scores at your-domain.com/pagespeed

### Set Up SSL/TLS

Cloudflare automatically provides free SSL certificates. No action needed.

### Configure Email Form

If you're using Formspree for the contact form:

1. Go to [formspree.io](https://formspree.io)
2. Create a new form
3. Get your form ID
4. Update `src/pages/contact.astro` with your form ID:
```javascript
action="https://formspree.io/f/YOUR_FORM_ID"
```

### Enable Caching Rules

In Cloudflare Dashboard:

1. Go to **Pages** → Your project
2. **Settings** → **Builds & deployments**
3. Under **Cache**, enable edge caching for:
   - HTML (60 seconds)
   - CSS/JS (1 month)
   - Images (1 month)

### Monitor Performance

1. In **Cloudflare Dashboard** → **Pages** → Select your project
2. View deployment logs and analytics
3. Check **Speed** metrics

### Setting Up CI/CD

The GitHub integration provides automatic builds on every push. To trigger deployments:

```bash
git push origin main  # Automatically triggers build and deployment
```

View build logs in Cloudflare Dashboard under **Deployments** tab.

## Troubleshooting

### Build Failures

Check the build logs in Cloudflare Pages dashboard:
1. Go to **Pages** → Your project
2. Click on the failed deployment
3. Scroll to see error details

Common issues:
- Missing `npm install` (usually automatic)
- Node version mismatch (upgrade Node.js locally)
- Environment variables not set

### Decap CMS Login Issues

1. Verify GitHub OAuth credentials are correct
2. Check that callback URL matches exactly
3. Clear browser cookies for `/admin` page
4. Test in incognito mode

### Images Not Loading

If images don't load after deployment:
1. Check image URLs are correct in Astro files
2. Verify `public/images/` folder exists (if using local images)
3. Check Cloudflare caching rules for image paths
4. Verify CORS headers if using external sources

### Contact Form Not Working

1. Verify Formspree form ID is correct
2. Check email address in form submission
3. Test with browser console open (check for errors)
4. Verify no firewall rules are blocking form submission

## Maintenance

### Regular Updates

Keep dependencies updated:
```bash
npm update
npm audit fix
```

### Backup Content

Since Decap CMS commits to GitHub, your content is automatically backed up. Pull commits regularly:
```bash
git pull origin main
```

### Monitor Analytics

1. **Cloudflare Analytics**: Built-in with Pages
2. **Google Analytics**: Add to `src/layouts/BaseLayout.astro`
3. **Form Submissions**: Check Formspree dashboard

## Need Help?

- **Cloudflare Pages Docs**: https://developers.cloudflare.com/pages/
- **Decap CMS Docs**: https://decapcms.org/docs/intro/
- **Astro Docs**: https://docs.astro.build/
- **Contact Support**: payalbhutani26@gmail.com

---

**Deployment Date**: [Date deployed]
**Last Updated**: March 8, 2024
