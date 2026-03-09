/* ── Case Study Data Types ── */

export interface ImageItem {
  src: string;
  alt: string;
  caption?: string;
}

export interface PersonaItem {
  name: string;
  role: string;
  goals: string;
  painPoints: string;
}

export interface MetricItem {
  value: string;
  label: string;
  description?: string;
}

export interface CardItem {
  icon?: string;
  title: string;
  description: string;
}

/* ── Section Types (building blocks for each act) ── */

export type Section =
  | { type: 'text'; label?: string; title: string; body: string }
  | { type: 'image'; src: string; alt: string; caption?: string; width?: 'narrow' | 'default' | 'wide' | 'full' }
  | { type: 'image-pair'; left: ImageItem; right: ImageItem }
  | { type: 'image-grid'; images: ImageItem[]; columns?: 2 | 3 | 4 }
  | { type: 'gallery'; images: ImageItem[]; variant?: 'desktop' | 'mobile' }
  | { type: 'video'; youtubeId: string; caption?: string }
  | { type: 'video-mobile'; videos: { youtubeId: string; title?: string }[]; images?: ImageItem[] }
  | { type: 'personas'; items: PersonaItem[] }
  | { type: 'cards'; title?: string; items: CardItem[] }

/* ── Full Case Study Config ── */

export interface CaseStudy {
  // Meta
  slug: string;
  title: string;
  subtitle: string;
  year: string;
  duration: string;
  platform: string;
  role: string;
  industry: string;
  heroImage: string;
  cardImage: string;
  color?: string;

  // Act 1: Discover
  problem: string;
  before: string[];
  after: string[];

  // Act 2: Explore
  explore: Section[];

  // Act 3: Shape
  shape: Section[];

  // Act 4: Craft
  craft: Section[];

  // Act 5: Prove
  metrics: MetricItem[];
  reflection: string;
}
