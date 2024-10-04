FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

ARG DEFALT_PORT=80

ENV PORT ${DEFALT_PORT}

EXPOSE ${PORT}

# VOLUME [ "/app/feedback" ]
# this was a unnamed volume - that if docker stop the vol will be gone.

VOLUME [ "/app/node_modules" ]

CMD [ "npm", "start" ]

