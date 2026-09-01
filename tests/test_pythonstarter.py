"""Test the pythonstarter command-line entry point."""

import pytest

from pythonstarter import main


def test_main(capsys: pytest.CaptureFixture[str]) -> None:
    """Verify that main writes the expected greeting."""
    main()

    captured = capsys.readouterr()
    assert captured.out == "Hello from pythonstarter!\n"
