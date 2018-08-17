import pytest
import skilift as sk


@pytest.fixture
def line():
    return sk.Line(5)


@pytest.fixture
def quadlift():
    return sk.Lift(10, sk.Quad)



def test_line_take(line):
    res = line.take(7)
    assert res == 5
    assert line.num_people == 0


def test_lift_one_bench(line, quadlift):
    res = quadlift.one_bench(line)
    assert res == {'loaded': 4, 'num_benches': 1, 'unloaded': 0}
