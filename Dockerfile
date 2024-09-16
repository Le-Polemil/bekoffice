# Utilisez l'image Node.js officielle comme base
FROM node:16

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers package.json et yarn.lock dans le répertoire de travail
COPY package.json .
COPY yarn.lock .

# Installer les dépendances en utilisant Yarn
RUN yarn install --verbose

# Copier le reste des fichiers de l'application dans le répertoire de travail
COPY . .

# Exposer le port sur lequel Strapi sera accessible
EXPOSE 1338

# Démarrer l'application Strapi
CMD ["yarn", "start"]
