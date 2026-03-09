/** @type {import('tailwindcss').Config} */
export default {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
  theme: {
    extend: {
      colors: {
        accent: '#0656f6',
        surface: '#fafafa',
        primary: '#1d1d1f',
        secondary: '#6e6e73',
      },
      fontFamily: {
        sans: ['Inter', 'system-ui', 'sans-serif'],
      },
      fontSize: {
        display: ['clamp(2.5rem, 5vw, 4.5rem)', { lineHeight: '1.08', fontWeight: '600', letterSpacing: '-0.03em' }],
        h2: ['clamp(1.75rem, 3vw, 2.5rem)', { lineHeight: '1.2', fontWeight: '600', letterSpacing: '-0.02em' }],
        h3: ['clamp(1.25rem, 2vw, 1.5rem)', { lineHeight: '1.3', fontWeight: '600' }],
        body: ['1.125rem', { lineHeight: '1.75' }],
        caption: ['0.875rem', { lineHeight: '1.5', letterSpacing: '0.05em' }],
      },
      maxWidth: {
        container: '1120px',
        narrow: '720px',
        wide: '1400px',
      },
      animation: {
        'fade-up': 'fadeUp 0.6s ease-out forwards',
        'fade-in': 'fadeIn 0.6s ease-out forwards',
        'count-up': 'countUp 0.6s ease-out forwards',
      },
      keyframes: {
        fadeUp: {
          '0%': { opacity: '0', transform: 'translateY(24px)' },
          '100%': { opacity: '1', transform: 'translateY(0)' },
        },
        fadeIn: {
          '0%': { opacity: '0' },
          '100%': { opacity: '1' },
        },
        countUp: {
          '0%': { opacity: '0', transform: 'translateY(12px)' },
          '100%': { opacity: '1', transform: 'translateY(0)' },
        },
      },
    },
  },
  plugins: [],
};
