import block

def test_genesis():
    node = block.Node('Ali')
    gb, hash = node.process_txns([])
    assert hash.startswith('0')
