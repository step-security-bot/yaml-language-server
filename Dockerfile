FROM node:lts@sha256:8cdf7234449f35e579f7491137807ddb3a089f028862f7ab69af437cc9f47ff1

WORKDIR /yaml-language-server

COPY . .

RUN yarn install && \
    yarn run build

ENTRYPOINT [ "node", "./out/server/src/server.js" ]
CMD [ "--stdio" ]
