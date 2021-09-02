# FROM node:14-slim
FROM node:14-alpine

USER node

RUN mkdir -p /home/node/app

WORKDIR /home/node/app

# para darle permisos al usuario y el punto es para que sepa en que ruta se esta trabajando /home/node/app
# primer punto raiz segundo a donde va a trabajar
COPY --chown=node . .

ENV HOST=0.0.0.0 PORT=3000

EXPOSE ${PORT}

# establece ejecutable y argumentos
CMD ["node", "app"]