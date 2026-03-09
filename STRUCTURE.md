# UiPix Portfolio - Project Structure

## Complete File Tree

```
uipix-site/
│
├── src/
│   ├── components/
│   │   ├── Header.astro               # Sticky navigation with mobile menu
│   │   ├── Footer.astro               # Footer with contact and social links
│   │   ├── Hero.astro                 # Hero section with profile
│   │   ├── CaseStudyCard.astro        # Reusable case study card component
│   │   └── ScrollAnimation.astro      # Animation wrapper component
│   │
│   ├── layouts/
│   │   └── BaseLayout.astro           # Main layout with header/footer
│   │
│   ├── pages/
│   │   ├── index.astro                # Homepage with case study grid
│   │   ├── contact.astro              # Contact form page
│   │   └── work/
│   │       ├── encore.astro           # Encore case study (full)
│   │       ├── carcare.astro          # Car Care case study (full)
│   │       └── symbio6.astro          # Symbio6 placeholder
│   │
│   ├── content/
│   │   └── config.ts                  # Astro content collection config
│   │
│   └── styles/
│       └── global.css                 # Global styles and animations
│
├── public/
│   ├── admin/
│   │   ├── index.html                 # Decap CMS entry point
│   │   └── config.yml                 # Decap CMS configuration
│   ├── images/                        # Project images (will be populated by download script)
│   ├── favicon.svg                    # Favicon (UiPix logo)
│   └── robots.txt                     # SEO robots file
│
├── Configuration Files
│   ├── package.json                   # Dependencies and scripts
│   ├── astro.config.mjs               # Astro configuration
│   ├── tailwind.config.mjs            # Tailwind CSS configuration
│   ├── tsconfig.json                  # TypeScript configuration
│   ├── wrangler.toml                  # Cloudflare Pages configuration
│   ├── .gitignore                     # Git ignore rules
│   └── .env.example                   # Environment variable template
│
└── Documentation
    ├── README.md                      # Project overview and getting started
    ├── README-deploy.md               # Detailed deployment guide
    ├── STRUCTURE.md                   # This file
    ├── download-assets.sh             # Script to download images from Odoo
    └── LICENSE                        # MIT License
```

## Component Hierarchy

```
BaseLayout
├── Header
│   ├── Mobile Menu Button
│   └── Navigation Links
├── Main Content (page-specific)
│   ├── Hero (Homepage)
│   │   └── Profile Section with Photo
│   ├── CaseStudyCard (Grid)
│   │   ├── Image
│   │   ├── Title & Description
│   │   └── Metadata
│   ├── Case Study Pages (Encore, Car Care, Symbio6)
│   │   ├── Hero Section
│   │   ├── Problem Statement
│   │   ├── User Research
│   │   ├── Design Process
│   │   ├── High-Fidelity Designs
│   │   ├── Results
│   │   └── Navigation Links
│   └── Contact Form
│       ├── Form Fields
│       ├── Validation
│       └── Success/Error Messages
└── Footer
    ├── Brand Info
    ├── Navigation Links
    ├── Contact Info
    └── Social Links
```

## Page Routes

| Route | File | Purpose |
|-------|------|---------|
| `/` | `src/pages/index.astro` | Homepage with case study cards |
| `/contact` | `src/pages/contact.astro` | Contact form and information |
| `/work/encore` | `src/pages/work/encore.astro` | Encore case study (full page) |
| `/work/carcare` | `src/pages/work/carcare.astro` | Car Care case study (full page) |
| `/work/symbio6` | `src/pages/work/symbio6.astro` | Symbio6 placeholder page |
| `/admin` | `public/admin/index.html` | Decap CMS dashboard |

## Styling Architecture

### Color Palette

- **Primary**: Black (#000000)
- **Background**: White (#FFFFFF)
- **Text**: Gray scale (600-900 for hierarchy)
- **Accent**: Blue (#0656f6) - Brand color from Car Care
- **Borders**: Light gray (#E5E7EB)

### Typography

- **Font Family**: Inter (from Google Fonts)
- **Headings**: Semibold (600-700 weight)
- **Body**: Regular (400 weight)
- **Emphasis**: Medium (500 weight)

### Spacing Scale

- 4px (0.25rem)
- 8px (0.5rem)
- 12px (0.75rem)
- 16px (1rem)
- 24px (1.5rem)
- 32px (2rem)
- 48px (3rem)
- 64px (4rem)

### Responsive Breakpoints

- Mobile: < 640px
- Tablet: 640px - 1024px
- Desktop: > 1024px

## Animation System

### Scroll Animations

- **Fade Up**: Elements fade in and move up 30px
- **Stagger**: List items animate with 100ms delay between each
- **Parallax**: Hero image animates with subtle parallax effect

### Implementation

Elements with `data-animate` attribute trigger animations when scrolling into view using IntersectionObserver API defined in `BaseLayout.astro`.

## Content Management

### Local Development

Edit files directly:
- Case studies: `src/pages/work/[name].astro`
- Homepage: `src/pages/index.astro`
- Contact: `src/pages/contact.astro`

### With Decap CMS

1. Access `/admin` endpoint
2. Create/edit case studies
3. Update site settings
4. Changes commit automatically to GitHub

## Image Organization

### Image Naming Convention

```
[project]-[component/type]-[variant].webp

Examples:
- encore-executive-dashboard.webp
- encore-budget-allocation.webp
- encore-exe-dashboard-m.webp (mobile variant)
- carcare-bob-persona.webp
- carcare-brand-style.webp
```

### Image Sources

All images are hosted on Odoo at `uipix.odoo.com` and referenced directly in components. To download locally, run:

```bash
bash download-assets.sh
```

Images will be saved to `public/images/`

## Development Workflow

### Local Setup
```bash
npm install
npm run dev
```

### Create New Content

1. Create new `.astro` file in `src/pages/work/`
2. Use BaseLayout and components
3. Add navigation links in footer/header
4. Build and test locally

### Styling Updates

1. Edit `tailwind.config.mjs` for config changes
2. Edit component `<style>` blocks for scoped CSS
3. Edit `src/styles/global.css` for global styles
4. Changes hot-reload in dev mode

### Animations

1. Add `data-animate` to elements in template
2. Modify IntersectionObserver in `BaseLayout.astro`
3. Update CSS animations in `global.css` and `tailwind.config.mjs`

## Build Process

### Development
```bash
npm run dev
# Starts at http://localhost:3000 with hot reload
```

### Production Build
```bash
npm run build
# Generates optimized static files in `dist/`
```

### Preview Production Build
```bash
npm run preview
# Tests production build locally
```

## Deployment Targets

### Cloudflare Pages

- **Build Command**: `npm run build`
- **Output Directory**: `dist`
- **Root Directory**: (default)
- **Automatic Deployments**: On every push to `main` branch

### Alternative Hosts

- Vercel
- Netlify
- GitHub Pages
- Any static hosting provider

## Environment Variables

See `.env.example` for required variables:

- `VITE_GITHUB_CLIENT_ID` - For Decap CMS OAuth
- `VITE_GITHUB_REPO` - Repository path
- `VITE_FORMSPREE_ID` - Contact form endpoint
- `SITE_URL` - Site domain

## Performance Metrics

### Lighthouse Targets
- Performance: > 95
- Accessibility: > 95
- Best Practices: > 95
- SEO: > 95

### Optimization Strategies
- Static site generation (no server-side rendering)
- CSS purging with Tailwind
- Image optimization (WebP format)
- Minimal JavaScript
- Gzip compression via Cloudflare

## Security

- No server-side database
- Content commits to GitHub
- CMS uses OAuth (no passwords stored)
- CSP headers via Cloudflare
- HTTPS enforced globally
- No third-party tracking (unless added)

## Accessibility

- Semantic HTML
- ARIA labels where needed
- Keyboard navigation support
- Color contrast ratios > 4.5:1
- Mobile touch targets > 44px

## SEO

- Meta descriptions on all pages
- Open Graph tags for social sharing
- Sitemap auto-generated
- robots.txt configured
- Structured data ready (add schema.org if needed)

---

**Project Version**: 1.0.0
**Last Updated**: March 8, 2024
**Status**: Production Ready
