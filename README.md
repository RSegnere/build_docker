# Création d'une image Docker

## Création d'un fichier Dockerfile

Pour créer une image Docker il faut d'abord créer un fichier `Dockerfile`. Ce fichier contient une liste d'instructions, de commandes, ... qui vont permettre de customiser son image pour qu'elle contienne tous les éléments nécessaire pour lancer son application.
Les différentes instructions sont :
- `FROM <image>` - this specifies the base image that the build will extend.
- `WORKDIR <path>` - this instruction specifies the "working directory" or the path in the image where files will be copied and commands will be executed.
- `COPY <host-path>` <image-path> - this instruction tells the builder to copy files from the host and put them into the container image.
- `RUN <command>` - this instruction tells the builder to run the specified command.
- `ENV <name> <value>` - this instruction sets an environment variable that a running container will use.
- `EXPOSE <port-number>` - this instruction sets configuration on the image that indicates a port the image would like to expose.
- `USER <user-or-uid>` - this instruction sets the default user for all subsequent instructions.
- `CMD ["<command>", "<arg1>"]` - this instruction sets the default command a container using this image will run.

## Build de l'image

`docker build --tag mon-image:1.0.0 .`

## Docker compose 

```
version: "3.9"

services:
  app1:
    image: mon-app1
    ports:
      - "8080:8080"

  app2:
    image: mon-app2
    ports:
      - "3000:3000"
```
