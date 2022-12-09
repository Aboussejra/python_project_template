get_poetry_linux:
	curl -sSL https://install.python-poetry.org | python3 -

get_poetry_windows:
	(Invoke-WebRequest -Uri https://install.python-poetry.org -UseBasicParsing).Content | py -

install:
	poetry install

activate_env:
	poetry shell

setup:
	make install
	make activate_env
	pre-commit install

test:
	poetry run pytest

types:
	poetry run mypy

fmt:
	poetry run black poetry_template/

lint:
	poetry run flake8 poetry_template/