# Этап сборки с Bun
FROM oven/bun:alpine AS builder
WORKDIR /app

# Установка зависимостей
COPY package*.json bun.lock* ./
RUN bun install --frozen-lockfile

# Копирование исходного кода
COPY . .

# Сборка приложения
RUN bun run build

# Этап запуска с Nginx
FROM nginx:alpine
WORKDIR /usr/share/nginx/html

# Копирование собранных файлов в директорию Nginx
COPY --from=builder /app/build/ ./

# Настройка для корректной маршрутизации SPA
RUN echo 'server { listen 80; location / { root /usr/share/nginx/html; try_files $uri $uri/ /index.html; } }' > /etc/nginx/conf.d/default.conf

# Открываем порт
EXPOSE 80

# Запуск Nginx
CMD ["nginx", "-g", "daemon off;"] 