from integer import integer
import pytest

def test_bad1():
    with pytest.raises(ValueError):
        integer.parse("bad input")

@pytest.mark.xfail(raises=ValueError)
def test_bad2():
    integer.parse("1-2,3-5")

if __name__ == '__main__':
    pytest.main()
