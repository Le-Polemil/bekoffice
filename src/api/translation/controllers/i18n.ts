import { setWith } from "lodash";

module.exports = {
  async getLangTranslations(ctx) {
    try {
      console.log({ lng: ctx.params.lng });
      const translations = await strapi
        .query("api::translation.translation")
        .findMany(
          {
            where: {
              locale: ctx.params.lng,
            },
          },
          ["key", "text"]
        );

      const json = {};
      translations?.forEach(({ key, text }) => {
        setWith(json, key, text, Object);
      });

      return json;
    } catch (e) {
      console.log("Il y a eu une erreur", e);
      return {};
    }
  },
};
