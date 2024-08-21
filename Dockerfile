FROM python:3.12-slim
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /app
RUN pip install --no-cache-dir poetry
COPY pyproject.toml poetry.lock* /app/
RUN poetry install --no-root --only main
COPY . /app/
RUN poetry run playwright install-deps
RUN poetry run playwright install
