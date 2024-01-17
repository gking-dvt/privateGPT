#!/bin/sh

export POETRY_VIRTUALENVS_IN_PROJECT=true
export PYTHONUNBUFFERED=1
export PORT=8080

PATH="/root/.local/bin:$PATH"
PATH=".venv/bin/:$PATH"

pip install --upgrade pip

# Install poetry
pip install pipx
python3 -m pipx ensurepath
pipx install poetry

poetry install --with local
poetry install --with ui
poetry run python scripts/setup