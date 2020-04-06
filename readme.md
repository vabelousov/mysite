Учебный блог на Django
=====================
>Этот репозиторий содержит исходные файлы по уроку [Блог на Django](https://pythonru.com/primery/blog-na-django-1-ustanovka-django-2). Исходные файлы могут отличаться от того что описано в уроке, так как модифициорвались после завершения. Это полностью локальная версия.

Установка и развертывание
-----------------------------------
для развертывания необходимо чтоб у вас был установлен **python3**:

      brew install python

далее нужно проверить, есть ли у вас **virtualenv** и если нет - установить:

      brew install virtualenv

так же в системе должна стоять база данных **PostgreSQL**:

      brew install postgresql

создаем рабочий каталог:

      mkdir Pyth03  #  (в моем случае он такой)

далее следует инициализировать виртуальную среду:

создаем папку для виртуальных сред. Если такая уже есть - просто заходим в нее:

      mkdir Pyth03/python-virtual-env/ && cd Pyth03/python-virtual-env/

инициализируем среду:

      vitrualenv venv

активируем ее:

      source venv/bin/activate
      чтобы деактивировать (deactivate)

(находясь в среде)

далее нам потребуется поставить следующие пакеты в самой среде:

      pip install django         #  Django
      pip install django-taggit  #  пакет для работы с тегами
      pip install markdown       #  пакет для работы с разметкой markdown
      pip install psycopg2       #  адаптер для PostgreSQL

(находясь в среде)

создадим проект и структуру директорий:

      django-admin startproject mysite  #  находясь в рабочей директории создаем проект

далее создадим и активируем приложение:

      cd mysite && python manage.py startapp blog

скачиваем содержимое репозитария

      git clone https://github.com/vabelousov/mysite.git

далее нам нужно создать базу данных и суперпользователя
если не запущена **postgresql** - запускаем:

      brew services start postgresql

создаем пользователя:

      createuser -dP blog

создаем базу:

      createdb -E utf8 -U blog blog

(находясь в среде)
создадим первую миграцию для **blog**

      python manage.py makemigrations blog  #  создание миграции???
      python manage.py migrate              #  миграция

создаем суперпользователя:

      python manage.py createsuperuser  #  тот который admin

и можно запускать локальный сервер:

      python manage.py runserver

или сервер разработки:

      python manage.py shell

после запуска сервера можно работать:

      localhost:8000/admin/
      localhost:8000/blog/
      localhost:8000/blog/search/
