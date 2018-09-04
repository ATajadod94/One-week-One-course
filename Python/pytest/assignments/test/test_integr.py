from integer import integer

def test_integer():
    assert(integer.parse("1,3,5,9") == [1,3,5,9])
