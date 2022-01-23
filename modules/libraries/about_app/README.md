# About App

<img src=".github/about_app_demo.gif" width=600>

# О проекте:

Генерирует текстовый файл с описанием приложения. Файл будет сохранен в корневой каталог пакета, в которое был интегрирован `About app` пакет. Файл будет сохранен под названием `about_app.txt`.

# Пример использования

1. Этот пакет `About App` подключен в pupspec.yaml верхнеуровнего приложения.

2. Для запуска пакета `About App` необходимо перейти в корневой каталог верхнеуровнего приложения, в которое был добавлен пакет `About App`.

3. В терминале выполнить необходимую команду пакета `About App`.

Примеры команд:

`generate`
```
$ flutter packages pub run about_app:generate
```
Ответ
```
Available commands:
   create   Display available ascii images.
```   


`generate create`
```
$ flutter packages pub run about_app:generate create
```
Ответ
```
Available images:
    cat
    table
```

`generate create table`
```
flutter packages pub run about_app:generate create table
```
Ответ
```
[INFO] File created successfully.
```

`generate create tokio`
```
$ generate create tokio
```
Ответ
```
[INFO] tokio not found.
```
