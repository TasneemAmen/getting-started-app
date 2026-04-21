FROM node:18-alpine
WORKDIR /app
COPY . .
RUN yarn add uuid@8
RUN yarn install --production && yarn cache clean
ENTRYPOINT ["node"]
CMD ["src/index.js"]
EXPOSE 3000
