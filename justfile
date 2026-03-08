# Wyświetla dostępne komendy
default:
	@just --list

# Instaluje zależności za pomocą uv
setup:
	uv sync

# Uruchamia Jupyter Notebook
jupyter:
	uv run jupyter notebook

# Formatuje i linteruje kod
lint:
	uv run ruff check .
	uv run ruff format .

# Uruchamia testy jednostkowe
test:
	uv run pytest tests/
