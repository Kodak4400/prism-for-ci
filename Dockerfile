FROM node:16

WORKDIR /openapi

COPY ./openapi.yml .

# install stoplight/prism
RUN npm install -g @stoplight/prism-cli

# exec - specify host as 0.0.0.0 to connect from docker host.
CMD ["prism", "mock", "openapi.yml", "-h", "0.0.0.0", "-p", "8080"]

EXPOSE 8080
