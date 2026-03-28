FROM quay.io/lyfe00011/md:beta AS builder

WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

FROM quay.io/lyfe00011/md:beta
WORKDIR /app
COPY --from=builder /app/node_modules ./node_modules
COPY . .

# Switch to a non-root user (if the base image defines one)
USER node

CMD ["yarn", "start"]
