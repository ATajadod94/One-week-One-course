import pytest
import skilift as sk


@pytest.fixture
def line_n(request):
    size = request.node.get_marker('line_size').args[0]
    return sk.Line(size)


@pytest.fixture
def quadlift():
    return sk.Lift(10, sk.Quad)


@pytest.fixture
def BenchN(request):
    size_ = request.node.get_marker('bench_size').args[0]

    class BSize(sk._Bench):
        size = size_

    return BSize


@pytest.mark.line_size(5)
def test_lift_one_bench(line_n, quadlift):
    res = quadlift.one_bench(line_n)
    assert res == {'loaded': 4, 'num_benches': 1, 'unloaded': 0}


@pytest.mark.bench_size(6)
def test_bench6(BenchN):
    lift = sk.Lift(10, BenchN)
    line5 = sk.Line(5)
    res = lift.one_bench(line=line5)
    assert res == {'loaded': 5, 'num_benches': 1, 'unloaded': 0}

