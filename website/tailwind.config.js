module.exports = {
  future: {
    removeDeprecatedGapUtilities: true,
    purgeLayersByDefault: true,
  },
  purge: ["./components/**/*.{js,ts,jsx,tsx}", "./pages/**/*.{js,ts,jsx,tsx}"],
  theme: {
    fontFamily: {
      display: ["Bungee Shade", "cursive"],
      body: ["Lato", "sans-serif"],
    },
    extend: {
      fontSize: {
        "7xl": "5rem",
        "8xl": "6rem",
        "9xl": "7rem",
      },
      width: {
        "percent-120": "120%",
      },
      minHeight: {
        70: "70vh",
      },
      colors: {
        "coral-red": {
          50: "#FFF6F6",
          100: "#FFECED",
          200: "#FFD0D3",
          300: "#FFB3B9",
          400: "#FF7B84",
          500: "#FF424F",
          600: "#E63B47",
          700: "#99282F",
          800: "#731E24",
          900: "#4D1418",
        },
      },
      skew: {
        "-10": "-10deg",
        10: "10deg",
      },
      spacing: {
        72: "18rem",
        80: "20rem",
      },
      animation: {
        "spin-slow": "spin 40s linear infinite",
      },
    },
  },
  variants: {
    backgroundColor: ["responsive", "hover", "focus", "group-hover"],
    textColor: ["responsive", "hover", "focus", "group-hover"],
    width: ["responsive", "group-hover"],
  },
  plugins: [],
};
