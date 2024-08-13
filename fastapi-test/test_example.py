import calc
import pytest

def test_add_one_plus_one_returns_two():
    actual = calc.add(1, 1)
    assert actual == 2