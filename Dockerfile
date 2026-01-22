# Usar imagem oficial do Nginx baseada em Alpine (leve e segura)
FROM nginx:alpine

# Copiar o arquivo HTML para o diretório padrão do Nginx
COPY index.html /usr/share/nginx/html/index.html

# Expor a porta 80
EXPOSE 80

# O Nginx já inicia automaticamente com a imagem base
CMD ["nginx", "-g", "daemon off;"]
