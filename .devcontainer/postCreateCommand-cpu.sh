#!/bin/sh

pip install --upgrade pip

# Install poetry
pip install pipx
python3 -m pipx ensurepath
pipx install poetry
PATH="/root/.local/bin:$PATH"
PATH=".venv/bin/:$PATH"

export POETRY_VIRTUALENVS_IN_PROJECT=true
poetry install --with local
poetry install --with ui

poetry run python scripts/setup