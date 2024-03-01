# Учебный проект для курса "Проектирование баз данных"
Проект представляет собой веб-приложение, которое позволяет пользователям регистрироваться, заполнять профиль, выкладывать посты, добавлять друг друга в друзья. Функционал чата находится в разработке.

## Команда разработчиков:
- Backend разработчик - [Елена](https://github.com/raiden-20)
- Frontend разработчик - [Анастасия](https://github.com/korobasssss)
- Дизайнер - [Елизавета](https://github.com/linkouwu)

## Разработка:
![схема](https://github.com/raiden-20/Messenger/assets/104516954/16cb5e2a-f0f2-4480-8d64-7864a4fc0d2a)
### Инструкция по запуску:
1. Клонируйте проект и перейдите в папку Messenger
   ```
   cd ./Messenger
   ```
2. Выполните команду для клонирования репозиториев - сабмодулей
   ```
   git submodule update --remote
   ```
3. Запустите процесс сборки контейнеров с инфраструктурой
   ```
   docker compose -p messenger-infrastraucture -f ./docker-infrastructure.yaml up
   ```
4. Выполните GET запрос и скопируйте значение у поля key
   ```
   curl localhost:8001/consumers/raiden/jwt
   ```
5. Откройте файл .env и поместите скопированное значение в поле KONG_KEY, сохраните файл
6. В файле .env в поле MAIL_CLUSTER в поля user и pass поместите свои логин и пароль для приложений **от почтвого ящика Яндекс**, сохраните файл
7. Запустите процесс сборки контейнеров с основными микросервисами
   ```
   docker compose -p messenger-services -f ./docker-services.yaml up
   ```
8. Перейдите в папку frontend
   ```
   cd ./frontend
   ```
9. Выполните команду для установки зависимостей клиенской части приложения
   ```
   npm install
   ```
10. Выполните команду для запуска клиентской части приложения
    ```
    npm start
    ```
12. Перейдите в браузере по адресу localhost:3000, приложение готово к работе
### Frontend:
- HTML5, CSS3
- Typescript
- React, Redux
### Backend:
- Java
- Spring Boot
- Spring Data JPA
- Spring Data MongoDB
- Spring AMQP
### DevOps
- RabbitMQ
- API Gateway KONG
- Nginx
- MinIO
### Дизайн
- [Figma](https://www.figma.com/file/d7jbrzbYmuctSuaI6ef2dv/%D0%A1%D0%BE%D1%86-%D1%81%D0%B5%D1%82%D0%BE%D1%87%D0%BA%D0%B0-%D0%B4%D0%BB%D1%8F-%D0%B1%D0%B4?type=design&node-id=0-1&mode=design&t=PjXXw47Vfa1Jccht-0](https://www.figma.com/file/d7jbrzbYmuctSuaI6ef2dv/%D0%A1%D0%BE%D1%86-%D1%81%D0%B5%D1%82%D0%BE%D1%87%D0%BA%D0%B0-%D0%B4%D0%BB%D1%8F-%D0%B1%D0%B4?type=design&node-id=0%3A1&mode=design&t=AHUHFjbuhSRp6H1z-1)https://www.figma.com/file/d7jbrzbYmuctSuaI6ef2dv/%D0%A1%D0%BE%D1%86-%D1%81%D0%B5%D1%82%D0%BE%D1%87%D0%BA%D0%B0-%D0%B4%D0%BB%D1%8F-%D0%B1%D0%B4?type=design&node-id=0%3A1&mode=design&t=AHUHFjbuhSRp6H1z-1)
