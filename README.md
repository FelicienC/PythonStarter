## PythonStarter

A modern Python package starter using `uv`, Ruff, `ty`, pytest, pre-commit, and
codespell.

Documentation is built with [MkDocs](https://www.mkdocs.org/). See the
[documentation index](docs/index.md) for the current site.

### Development

Initialize the development environment and install the Git hooks:

```sh
make init
```

Run the test suite with coverage:

```sh
make tests
```

Run all pre-commit checks manually:

```sh
make pre-commit
```

Remove the virtual environment and generated files:

```sh
make clean
```
