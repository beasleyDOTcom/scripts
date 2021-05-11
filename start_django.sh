#!/bash/script

poetry add django

echo "What do you want to call your project settings? (snake_case)"
read settings

django-admin startproject $settings .

echo "what do you want to call your app? (snake_case)"
read app_name

python manage.py startapp $app_name

python manage.py migrate

python manage.py runserver