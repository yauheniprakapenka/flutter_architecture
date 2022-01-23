# About App

<img src=".github/about_app_demo.gif" width=600>

# О проекте:

Генерирует текстовый файл с описанием приложения. Файл будет сохранен в корневой каталог пакета, в которое был интегрирован `About app` пакет. Файл будет сохранен под названием `about_app.txt`.

# Пример использования

1. Подключить этот пакет `About App` в pupspec.yaml того пакета, в которое он будет добавлен, указав путь до `About App` пакета. Пример:

    ```
    dependencies:
    flutter:
        sdk: flutter

    about_app:
        path: modules/libraries/about_app/  
    ```

2. Перейти в корневой каталог пакета, в которое был добавлен пакет `About App`.

3. В терминале выполнить необходимые команды.

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
