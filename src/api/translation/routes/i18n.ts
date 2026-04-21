module.exports = {
  routes: [
    {
      method: "GET",
      path: "/translations/:lng",
      handler: "i18n.getLangTranslations",
    },
  ],
};
