# Usa la imagen oficial de nginx como base
FROM nginx:alpine

# Copia los archivos de tu aplicación al directorio de nginx
COPY . /usr/share/nginx/html

# Exponer el puerto 80 para el tráfico HTTP
EXPOSE 3000

# Agregar un health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:3000 || exit 1

# Comando para ejecutar nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]