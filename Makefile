UV := uv

.PHONY: init tests docs-build docs-serve pre-commit clean

init:
	$(UV) sync
	$(UV) run pre-commit install
	$(UV) run pre-commit install --hook-type commit-msg

tests:
	$(UV) run pytest --cov-fail-under=100

pre-commit:
	$(UV) run pre-commit run --all-files

docs-build:
	$(UV) run mkdocs build --strict

docs-serve:
	$(UV) run mkdocs serve

clean:
	rm -rf .venv .pytest_cache .ruff_cache .ty_cache build dist *.egg-info
	find . -type d -name __pycache__ -prune -exec rm -rf {} +
