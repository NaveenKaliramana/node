# use a node base image
FROM node:18-onbuild

# set maintainer
LABEL maintainer "naveenkaliramana@gmail.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:3000 || exit 1

# tell docker what port to expose
EXPOSE 3000
