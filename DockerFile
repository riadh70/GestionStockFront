# Stage 1: Build the Angular app
FROM node:12 as node
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build --prod

# Stage 2: Serve the built app using Nginx
FROM nginx:alpine
COPY --from=node /app/dist/gestion-de-stock /usr/share/nginx/html
# COPY nginx.conf /etc/nginx/conf.d/default.conf
# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]
