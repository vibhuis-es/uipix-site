# UiPix — Payal Bhutani's UX Design Portfolio

Built with **Astro + Tailwind CSS + Decap CMS**, deployed on **Cloudflare Pages**.

---

## Quick Start (Run Locally)

```bash
# 1. Install dependencies
npm install

# 2. Start dev server
npm run dev

# 3. Open in browser
#    → http://localhost:4321
```

The site will hot-reload as you edit files.

## Build for Production

```bash
npm run build        # Build static site to dist/
npm run preview      # Preview the build locally
```

---

## CMS — Edit Content from a Visual UI

The site includes **Decap CMS** — a visual admin panel at `/admin` where you can:

- **Add new case studies** (with images, content, metrics, gallery)
- **Edit existing case studies** (change text, swap images, reorder)
- **Upload/replace images** directly from the UI
- **Edit site settings** (profile photo, bio, tagline, social links)
- **Delete case studies** you no longer need

### How the CMS Works

1. Content lives as markdown files in `src/content/case-studies/`
2. Site settings live in `src/content/settings/site.json`
3. The CMS at `/admin` provides a visual editor for these files
4. When you save, changes are committed to your Git repo automatically
5. Cloudflare Pages auto-rebuilds and deploys

### Setting Up the CMS

**For Local Development:**

```bash
# Terminal 1: Start the CMS proxy server
npx decap-server

# Terminal 2: Start the dev server
npm run dev

# Go to http://localhost:4321/admin
```

**For Production (GitHub OAuth):**

1. Create a GitHub OAuth App at https://github.com/settings/developers
2. Set callback URL to `https://api.netlify.com/auth/done`
3. Update `public/admin/config.yml` — set `repo` to your `username/repo-name`
4. Push to GitHub → Cloudflare auto-deploys
5. Visit `https://yourdomain.com/admin` to manage content

---

## Deploy to Cloudflare Pages

1. **Push** this repo to GitHub
2. Go to [Cloudflare Pages Dashboard](https://dash.cloudflare.com) → Pages → Create Project
3. **Connect** your GitHub repo
4. **Build settings:**
   - Framework preset: **Astro**
   - Build command: `npm run build`
   - Build output: `dist`
5. Click **Deploy**

Your site goes live at `your-project.pages.dev`. Add a custom domain in Cloudflare Pages settings.

**Alternative — CLI deploy:**
```bash
npx wrangler pages deploy dist
```

---

## Download Images Locally

Images currently reference the Odoo site URLs. To self-host them:

```bash
bash download-assets.sh
```

Then update image paths in the markdown files from Odoo URLs to `/images/` paths.

---

## Project Structure

```
src/
├── components/          # Header, Footer, Hero, CaseStudyCard, ScrollAnimation
├── content/
│   ├── case-studies/    # Markdown files — CMS-managed
│   │   ├── encore.md
│   │   ├── carcare.md
│   │   └── symbio6.md
│   └── settings/        # Site config — CMS-managed
│       └── site.json
├── layouts/             # BaseLayout with animations
├── pages/
│   ├── index.astro      # Homepage
│   ├── contact.astro    # Contact form
│   └── work/            # Case study detail pages
│       ├── encore.astro
│       ├── carcare.astro
│       └── symbio6.astro
└── styles/              # global.css + Tailwind
public/
├── admin/               # Decap CMS (config.yml + index.html)
└── images/uploads/      # CMS-uploaded images go here
```

---

## Customization

**Colors:** Edit `tailwind.config.mjs` → `colors.accent` (currently `#0656f6`)

**Fonts:** Change the Google Fonts link in `src/layouts/BaseLayout.astro`

**Animations:** Modify IntersectionObserver behavior in `BaseLayout.astro`. Elements with `data-animate` fade up on scroll. Lists with `data-animate-list` stagger their children.

---

## Tech Stack

| Tool | Purpose |
|------|---------|
| Astro 4 | Static site generator (zero JS by default) |
| Tailwind CSS 3 | Utility-first styling |
| Decap CMS | Git-based headless CMS with visual editor |
| Cloudflare Pages | Free hosting with global CDN |
| Inter | Typography (Google Fonts) |

---

© 2026 Payal Bhutani / UiPix. All rights reserved.
