# Stage 2
FROM nginx:alpine
COPY --from=node dist/gestion-de-stock /usr/share/nginx/html

# Expose the desired port (default is 80)
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
