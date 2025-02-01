# Usa una imagen base de Nginx para servir archivos estáticos
FROM nginx:1.21.6

# Copia los archivos HTML, CSS y JS al contenedor dentro del directorio de Nginx
COPY TO-DO-LIST /usr/share/nginx/html/

# Expone el puerto 80 para acceder a la aplicación
EXPOSE 80

# Comando por defecto para ejecutar Nginx
CMD ["nginx", "-g", "daemon off;"]

