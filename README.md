## leanote docker-compose configs

![Docker](https://img.shields.io/badge/Docker-black)

Репозиторий содержит Docker файл Leanote - онлайн платформы для заметок, которую можно установить на свой собственный сервер.    

> Leanote, Not Just A Notebook!

## Установка

Склонируйте репозиторий и скачайте необходимые образы Docker:

```bash
git clone https://github.com/student-proger/leanote-dockerfile.git
cd leanote-dockerfile
sudo docker push r0wbh/leanote-mongodb:latest
sudo docker push r0wbh/leanote:latest
```

В файле `conf/app.conf` отредактируйте следующие параметры:    
`site.url` - URL сайта, например https://example    
`app.secret` - секрет, произвольная строка символов    

## Запуск

```bash
sudo docker-compose up -d
```

Интерфейс находится по адресу http://example:9000

## Ссылки

[Репозиторий с исходным кодом Leanote](https://github.com/student-proger/leanote-all-ru)
