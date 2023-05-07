# Asymmetric JWT Example
[![CI](https://github.com/techonomydev/asymmetric-jwt-example/actions/workflows/ci.yml/badge.svg)](https://github.com/techonomydev/asymmetric-jwt-example/actions/workflows/ci.yml)

A demo project for the blogpost "Asymmetric JWT for M2M authorization"

## Development setup

### Requirements

- At least python 3.11 (pyenv managed recommended)

### Install the python project with poetry
```bash
pyenv virtualenv 3.11 asymmetric-jwt-example  # or your alternative to create a venv
pyenv activate asymmetric-jwt-example
pip install "pip>=23,<23.1" "poetry>=1.4.0,<1.5"
make install
```

Optional, when you're not creating the virtualenv yourself poetry will do it for you. You can activate the poetry venv like so:
```bash
source $(poetry env info --path)/bin/activate
```

### Linting
`flake8-black` and `flake8-isort` are installed and configured
```bash
make lint
```

### Formatting

`black` and `isort` are configured
```bash
make format
```

### Test

Pytest with coverage is default enabled
```bash
make test
```
