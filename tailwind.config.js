const colors = {
  purple: "#7D07F2",
  red: "#FB4953",
  yellow: "#FEC957",
  green: "#65F1E4"
}

module.exports = {
  theme: {
    extend: {
      borderRadius: {
        'lg': '2rem'
      },
      boxShadow: {
      lg: ' 0 0px 15px -3px rgba(0, 0, 0, .1), 0 0px 6px -2px rgba(0, 0, 0, .05)'
      },
      colors: colors,
      fill: colors
    }
  },
  variants: {},
  plugins: [],
}
