# Usar imagem oficial do Nginx baseada em Alpine (leve e segura)
FROM nginx:alpine

# Copiar todos os arquivos para o diretório padrão do Nginx
COPY . /usr/share/nginx/html/

# Expor a porta 80
EXPOSE 80

# O Nginx já inicia automaticamente com a imagem base
CMD ["nginx", "-g", "daemon off;"]
