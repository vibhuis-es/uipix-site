# UiPix Portfolio - Quick Start Guide

## 🚀 Get Running in 5 Minutes

### 1. Install Dependencies
```bash
cd "/sessions/vibrant-dazzling-noether/mnt/Claude projects/uipix-site"
npm install
```

### 2. Start Development Server
```bash
npm run dev
```
Visit `http://localhost:3000` - site is live!

### 3. Build for Production
```bash
npm run build
```
Output goes to `dist/` folder

---

## 📁 Key Files to Edit

| File | Purpose | Edit to... |
|------|---------|-----------|
| `src/pages/index.astro` | Homepage | Change intro text, case studies list |
| `src/pages/work/encore.astro` | Encore case study | Update project details, images |
| `src/pages/work/carcare.astro` | Car Care case study | Update project details, images |
| `src/pages/contact.astro` | Contact page | Change email, form fields |
| `src/components/Header.astro` | Navigation | Add/remove nav links |
| `src/components/Footer.astro` | Footer | Update social links, contact info |
| `tailwind.config.mjs` | Colors & fonts | Change accent color, typography |

---

## 🎨 Common Customizations

### Change Brand Color (Blue to Your Color)
Edit `tailwind.config.mjs`:
```javascript
colors: {
  accent: '#YOUR_HEX_COLOR', // Change from #0656f6
}
```

### Update Contact Email
Edit `src/components/Footer.astro` and `src/pages/contact.astro`
```html
href="mailto:newemail@example.com"
```

### Add New Case Study
1. Create `src/pages/work/newproject.astro`
2. Copy template from `encore.astro`
3. Update content and images
4. Add link in `src/pages/index.astro`

### Change Site Title
Edit `src/layouts/BaseLayout.astro`:
```html
<title>{title} — New Branding</title>
```

---

## 🚢 Deploy to Cloudflare Pages

### Step 1: Push to GitHub
```bash
git init
git add .
git commit -m "Initial commit"
git push origin main
```

### Step 2: Connect Cloudflare
1. Go to https://pages.cloudflare.com/
2. Click "Create a project"
3. Select "Connect to Git"
4. Choose your repository
5. Build settings:
   - **Command**: `npm run build`
   - **Directory**: `dist`
6. Deploy!

### Step 3: Set Custom Domain
1. In Cloudflare, go to Pages → Your Project
2. Settings → Domains → Add Domain
3. Follow DNS setup instructions

---

## 🖼️ Images

### Using Direct Odoo URLs (Current Setup)
Images are loaded directly from Odoo - no changes needed. URLs work from anywhere.

### Download Images Locally (Optional)
```bash
bash download-assets.sh
```
Images save to `public/images/`

Then update image paths in components:
```astro
src="/images/encore-dashboard.webp"
// instead of
src="https://uipix.odoo.com/web/image/..."
```

---

## 🎬 Animations

Animations are automatic! To add animation to any element:

```astro
<div data-animate class="opacity-0">
  Your content here
</div>
```

Element will fade up when scrolled into view. No additional setup needed.

For list animations:
```astro
<div data-animate-list>
  <div>Item 1 (animates 100ms apart)</div>
  <div>Item 2</div>
  <div>Item 3</div>
</div>
```

---

## 📝 Decap CMS (Content Management)

### Access the CMS
1. Deploy to Cloudflare Pages
2. Visit `yoursite.com/admin`
3. Log in with GitHub

### Configure CMS
1. Create GitHub OAuth App
2. Update `public/admin/config.yml` with credentials
3. Use visual editor to create/edit case studies

---

## 🔧 Useful Commands

```bash
# Start dev server with hot reload
npm run dev

# Build production site
npm run build

# Preview production build locally
npm run preview

# Download images from Odoo
bash download-assets.sh

# Check TypeScript types
npm run type-check  # (if configured)

# Format code
npm run format  # (if configured)
```

---

## 📊 File Structure

```
uipix-site/
├── src/
│   ├── pages/          ← Edit homepage, contact, case studies
│   ├── components/     ← Edit header, footer, cards
│   ├── layouts/        ← Edit base layout
│   ├── styles/         ← Edit global CSS
│   └── content/        ← CMS configuration
├── public/             ← Images, favicon, robots.txt
├── README.md           ← Full documentation
└── wrangler.toml       ← Cloudflare config
```

---

## ✅ Pre-Deployment Checklist

Before deploying to production:

- [ ] Edit homepage intro text
- [ ] Update contact email
- [ ] Update social links (LinkedIn, Facebook, X)
- [ ] Change brand color if needed
- [ ] Test all pages locally
- [ ] Test contact form
- [ ] Check responsive design (mobile, tablet, desktop)
- [ ] Run Lighthouse audit
- [ ] Update site domain in `astro.config.mjs`

---

## 🐛 Troubleshooting

### Site doesn't show locally
```bash
# Make sure you're in the right directory
cd "/sessions/vibrant-dazzling-noether/mnt/Claude projects/uipix-site"

# Clear cache and reinstall
rm -rf node_modules
npm install
npm run dev
```

### Images don't load
- Check that Odoo URLs are correct
- Or run `bash download-assets.sh` to use local images
- Check image paths in components match actual URLs

### Build fails
- Check Node version: `node --version` (needs 18+)
- Delete `.astro` folder: `rm -rf .astro`
- Reinstall: `npm install`
- Build again: `npm run build`

### Contact form doesn't work
- Set up Formspree account: https://formspree.io
- Update form ID in `src/pages/contact.astro`
- Test with actual email

---

## 📚 Learn More

- **Astro**: https://docs.astro.build/
- **Tailwind**: https://tailwindcss.com/docs
- **Decap CMS**: https://decapcms.org/docs/
- **Cloudflare Pages**: https://developers.cloudflare.com/pages/

---

## 💡 Tips

1. **Hot Reload**: Changes auto-reload in dev mode
2. **Type Safety**: TypeScript catches errors at build time
3. **Fast Builds**: Astro builds only changes
4. **Static Output**: No server needed, super fast
5. **SEO Ready**: Meta tags on all pages
6. **Mobile First**: Responsive by default

---

## 🆘 Need Help?

Check these files in order:
1. `README.md` - Detailed overview
2. `STRUCTURE.md` - Architecture details
3. `README-deploy.md` - Deployment guide
4. `IMPLEMENTATION-SUMMARY.md` - Complete feature list

---

**Ready to go!** Start with `npm install && npm run dev`

Questions? Contact: payalbhutani26@gmail.com
