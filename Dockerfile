# WHY: Using Dockerfile to avoid Railway's upload size limit (~500MB) for this asset-heavy project
FROM node:20-alpine

WORKDIR /app

# Copy package files first for better Docker layer caching
COPY package.json package-lock.json ./
RUN npm ci --production

# Copy the rest of the application
COPY . .

# WHY: Railway sets PORT env var automatically; fallback to 3002 for local dev
EXPOSE ${PORT:-3002}

CMD ["node", "server.js"]
