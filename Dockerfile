# Usa la imagen base de Nginx
FROM nginx:1.21.6

# Copia todos los archivos del proyecto a la carpeta de Nginx
COPY . /usr/share/nginx/html/

# Expone el puerto 80 para servir la aplicación
EXPOSE 80

# Comando por defecto para ejecutar Nginx
CMD ["nginx", "-g", "daemon off;"]

