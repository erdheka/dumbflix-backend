FROM node:14
WORKDIR /usr/src/app
COPY . .
ENV DATABASE_HOST postgres
ENV DATABASE_PORT 5432
ENV DATABASE_DB dumbflix
ENV DATABASE_USER rio
ENV DATABASE_PASSWORD 123Qweasd
ENV DATABSE_URL	postgresql://rio:123Qweasd@10.119.158.167:5432/dumbflix
ENV NODE_ENV production
RUN npm install
RUN npm install --save sequelize-cli -g
RUN npm install --save pg pg-hstore #Postgres
RUN npx sequelize db:migrate
EXPOSE 5000
CMD ["npm", "run", "zilong"]
