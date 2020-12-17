# Container tha runs the code
FROM node:alpine
# Install dependencies (emacs and Pandoc)
RUN apk update && apk add emacs git openssh-client
# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
