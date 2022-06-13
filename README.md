# Учебный проект
![status](https://github.com/SPTolkachev/yamdb_final/actions/workflows/yamdb_workflow.yml/badge.svg)

## Описание
Учебный проект 13 спринта Яндекс.Практикума.

## Файл .env
1. Создайте файл `.env` из шаблона `.env.example`
    ```shell
    $ cp infra/.env.example infra/.env
    ```
2. Внесите соответствующие данные в файл
    - `SECRET_KEY` -- секретный ключ django
    - `DEBUG` -- режим разработки
    - `DB_ENGINE` -- СУБД
    - `DB_NAME` -- имя базы данных
    - `POSTGRES_USER` -- имя пользователя Postgresql
    - `POSTGRES_PASSWORD` -- пароль Postgresql
    - `DB_HOST` -- хост БД
    - `DB_PORT` -- порт БД
    - `PUBLIC_HOST` -- хост для `ALLOWED_HOSTS`

## Команды
### Запуск
Для сборки и запуска приложения необходимо выполнить команду
```shell
$ docker-compose --file ./infra/docker-compose.yaml up -d --build
```
В случае, если в процессе запуска приложения будет выведено сообщение
`PostgreSQL Database directory appears to contain a database; Skipping initialization`,
то необходимо удалить директорию `infra/pgdata`
```shell
sudo rm infra/pgdata
```

### адрес сервера с развернутым сервисом
84.201.141.20

### Заполнение базы
Для выполнения миграций выполните следующую команду
```shell
$ docker-compose exec web python manage.py migrate
```
