.PHONY: deps test

build_up:
	docker-compose up -d --force-recreate --build

rebuild:
	docker-compose down
	docker-compose build --no-cache
	docker-compose up -d

make_migrations:
	docker-compose exec app python manage.py makemigrations

migrate:
	docker-compose exec app python manage.py migrate

super_user:
	docker-compose exec app python manage.py createsuperuser

app_logs:
	docker-compose logs app

db_logs:
	docker-compose logs db

lint:
	docker-compose run app flake8 --exclude migrations,settings.py,env,.pytest_cache,.github --ignore E501,W503
