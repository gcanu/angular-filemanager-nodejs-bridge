FROM node:8

LABEL maintainer="Fabian Köster <koesterreich@fastmail.fm>"
LABEL maintainer="Guillaume Canu <gcanu@softgestion-sas.fr>"

# Copy over package.json
ADD package.json ./

# Install dependencies
RUN npm install --silent

# Copy over remaining sources
ADD . ./

# Start the web application server
CMD node server.js

# The port(s) the web application uses
EXPOSE 80
