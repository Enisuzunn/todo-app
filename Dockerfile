# Nginx image kullanarak statik dosyaları servis et
FROM nginx:alpine

# Uygulama dosyalarını nginx'in varsayılan dizinine kopyala
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

# Port 80'i aç
EXPOSE 80

# Nginx otomatik olarak başlayacak
CMD ["nginx", "-g", "daemon off;"]
