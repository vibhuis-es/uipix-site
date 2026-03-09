import { defineCollection, z } from 'astro:content';

const caseStudies = defineCollection({
  type: 'content',
  schema: z.object({
    title: z.string(),
    subtitle: z.string(),
    year: z.string(),
    duration: z.string(),
    platforms: z.string(),
    role: z.string(),
    industry: z.string(),
    order: z.number().default(1),
    draft: z.boolean().default(false),
    comingSoon: z.boolean().default(false),
    cardImage: z.string(),
    heroImage: z.string().optional(),
    problem: z.string().optional(),
    gallery: z.array(z.object({
      image: z.string(),
      caption: z.string().optional(),
      section: z.enum(['wireframes', 'high-fidelity', 'mobile', 'other']).default('high-fidelity'),
    })).optional(),
    metrics: z.array(z.object({
      value: z.string(),
      label: z.string(),
      description: z.string().optional(),
    })).optional(),
    reflection: z.string().optional(),
  }),
});

export const collections = {
  'case-studies': caseStudies,
};
