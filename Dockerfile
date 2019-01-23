FROM php:7-alpine3.8

EXPOSE 8000

CMD ["php", "-S", "0.0.0.0:8000", "-t", "/studio/public"]