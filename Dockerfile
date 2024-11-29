# Usa la imagen oficial de nginx como base
FROM nginx:alpine

# Copia los archivos de tu aplicación al directorio de nginx
COPY . /usr/share/nginx/html

# Exponer el puerto 80 para el tráfico HTTP
EXPOSE 3000

# Comando para ejecutar nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]