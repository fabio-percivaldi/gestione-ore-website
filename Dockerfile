FROM nginx:1.17.2-alpine as build

LABEL name="gestione-ore-website" \
      description="" \
      eu.mia-platform.url="https://www.mia-platform.eu" \
      eu.mia-platform.version="0.2.6"

COPY nginx /etc/nginx

RUN touch ./off \
  && chmod o+rw ./off \
  && echo "gestione-ore: $COMMIT_SHA" >> /etc/nginx/commit.sha

WORKDIR /usr/static

COPY ./dist .

USER nginx
