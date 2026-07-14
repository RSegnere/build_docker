FROM alpine:latest
WORKDIR /app

# Copie des fichier de mon application
COPY my-app/ .

# Jouer une série de commandes pour customiser l'image, par exemple installer des packages
RUN apk add curl && ... && ...
