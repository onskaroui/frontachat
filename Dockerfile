FROM node:18.15.0
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build --prod
FROM nginx:alpine
COPY --from=build /app/dist/empl /usr/share/nginx/html



