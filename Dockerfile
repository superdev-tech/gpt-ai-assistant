FROM node:18-alpine

ARG OPENAI_API_KEY
ENV OPENAI_API_KEY "$OPENAI_API_KEY"

ARG LINE_CHANNEL_ACCESS_TOKEN
ENV LINE_CHANNEL_ACCESS_TOKEN "$LINE_CHANNEL_ACCESS_TOKEN"

ARG LINE_CHANNEL_SECRET
ENV LINE_CHANNEL_SECRET "$LINE_CHANNEL_SECRET"

ARG APP_LANG
ENV APP_LANG "$APP_LANG"

ARG APP_PORT
ENV APP_PORT "$APP_PORT"

ARG OPENAI_TIMEOUT
ENV OPENAI_TIMEOUT "$OPENAI_TIMEOUT"

ARG LINE_TIMEOUT
ENV LINE_TIMEOUT "$LINE_TIMEOUT"

ARG LINE_USERS_WHITELIST
ENV LINE_USERS_WHITELIST "$LINE_USERS_WHITELIST"

WORKDIR /app

COPY . .

RUN npm ci --only=production

CMD [ "npm", "start" ]
