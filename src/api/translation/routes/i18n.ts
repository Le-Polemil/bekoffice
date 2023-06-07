module.exports = {
  routes: [
    {
      // Path defined with a URL parameter
      method: "GET",
      path: "/i18n/:lng",
      handler: "i18n.getLangTranslations",
    },
  ],
};
