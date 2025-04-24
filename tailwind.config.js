/** @type {import('tailwindcss').Config} */
export default {
  content: ['./src/**/*.{html,js,svelte,ts}'],
  theme: {
    extend: {},
  },
  plugins: [
    // Using import() for ES modules
    (await import('@tailwindcss/forms')).default(),
    (await import('@tailwindcss/typography')).default(),
    (await import('@iconify/tailwind')).default()
  ],
};