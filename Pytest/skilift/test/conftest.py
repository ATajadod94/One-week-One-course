import pytest

from skilift import Line, Quad, Lift, _Bench


@pytest.fixture
def line5():
    line = Line(5)
    return line


@pytest.fixture
def line_n(request):
    size = request.node.get_marker('line_size').args[0]
    line = Line(size)
    return line


@pytest.fixture
def quad_lift10():
    lift = Lift(10, Quad)
    return lift


@pytest.fixture
def take_num():
    return 1


@pytest.fixture
def BenchN(request):
    size_ = request.node.get_marker('bench_size').args[0]

    class BSize(_Bench):
        size = size_

    return BSize