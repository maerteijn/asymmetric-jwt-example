.PHONY: clean install lint test cov format

default: clean install

clean:
	find . -name '*.pyc' -exec rm -rf {} +
	find . -name '__pycache__' -exec rm -rf {} +
	find . -name '*.egg-info' -exec rm -rf {} +

install:
	poetry install

lint:
	flake8 src tests

test:
	pytest

cov:
	pytest --cov=asymmetric_jwt_example --cov-report=html --cov-report=term

format:
	black src tests
	isort src tests
