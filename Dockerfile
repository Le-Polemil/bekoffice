FROM node:18

RUN corepack enable && corepack prepare pnpm@latest --activate

WORKDIR /app

# Copy dependency and config files
COPY package.json .npmrc ./

# Fresh install with hoisted node_modules (no lockfile = resolves for linux)
RUN pnpm install --no-frozen-lockfile

COPY . .

RUN pnpm build

EXPOSE 1338

CMD ["pnpm", "start"]
