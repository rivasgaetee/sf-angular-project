/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./src/**/*.{html,ts}", // Escanea archivos HTML y TypeScript
  ],
  theme: {
    extend: {}, // Puedes agregar configuraciones personalizadas aquí
  },
  plugins: [require("daisyui")], // Activa DaisyUI
  daisyui: {
    themes: ["light", "dark"], // Activa temas predefinidos
  },
};
