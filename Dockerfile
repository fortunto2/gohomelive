FROM python:3.9

RUN pip install poetry
COPY poetry.lock pyproject.toml /app/
WORKDIR /app

RUN poetry config virtualenvs.create false && poetry install --no-interaction --no-ansi
