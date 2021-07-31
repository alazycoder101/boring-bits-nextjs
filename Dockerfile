FROM node:14

ENV PORT 3000

ARG app=/opt/app
WORKDIR $app

# Installing dependencies
ADD package.json yarn.lock .
RUN yarn install --no-progress --frozen-lockfile --production

# Copying source files
ADD . ./

EXPOSE $PORT

# Running the app
CMD "yarn" "dev"
