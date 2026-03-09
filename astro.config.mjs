import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';

export default defineConfig({
  integrations: [tailwind()],
  output: 'static',
  site: 'https://uipix.dev',
  trailingSlash: 'ignore',
  vite: {
    ssr: {
      external: ['decap-cms']
    }
  }
});
