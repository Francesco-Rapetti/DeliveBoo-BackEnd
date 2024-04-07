FROM docker.io/bitnami/laravel:9
COPY . .
RUN composer install
RUN npm install
RUN npm run build
CMD php artisan serve --host=0.0.0.0 --port=80
EXPOSE 80
