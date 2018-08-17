import pytest
import skilift as sk


@pytest.mark.parametrize(('size', 'error'), [
    ([], TypeError),
    (None, TypeError),
    ('10', TypeError)
])
def test_line_bad(size, error):
    with pytest.raises(error):
        line = sk.Line(size)
        res = line.take(1)
        assert res == 9


@pytest.mark.parametrize(('size', 'take', 'soln'), [
    (0, 5, 0),
    (5, 2, 3),
    (10, 0, 10)
])
def test_line_sizes(size, take, soln):
    line = sk.Line(size)
    line.take(take)
    assert line.num_people == soln
