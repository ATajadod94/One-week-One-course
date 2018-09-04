"""

https://bitcoin.org/bitcoin.pdf

* Coin - chain of digital signature
* Chain - seq of hash(block + prev block)
* Proof of Work - (Mining) Create value when we discover a hash that starts with a certain amount of 0's
* Transaction - Contains inputs and outputs

"""
import hashlib
import json

MINING_COST = 1

def get_hash(data_dict):
    sha = hashlib.sha256()
    data = json.dumps(data_dict, sort_keys=True)
    sha.update(data.encode('utf-8'))
    return sha.hexdigest()


class Amount:
    def __init__(self, uuid, amount):
        self.uuid = uuid
        self.amount = amount

    def todict(self):
        return {'uuid': self.uuid, 'amount': self.amount}


class Transaction:
    def __init__(self, inputs, outputs):
        self.inputs = inputs
        self.outputs = outputs

    def todict(self):
        return {'inputs': [i.todict() for i in self.inputs],
                'outputs': [o.todict() for o in self.outputs]}


class Block:
    def __init__(self, txns, prev_hash):
        self.txns = txns
        self.prev_hash = prev_hash
        self.nonce = None

    def todict(self, nonce=None):
        nonce = nonce if nonce is not None else self.nonce
        body = {'txns': [t.todict() for t in self.txns]}
        header = {'prev_hash': self.prev_hash,
                  'body_hash': get_hash(body),
                  'nonce': nonce}
        return {'header': header, 'body': body}


class Node:
    def __init__(self, uuid):
        self.uuid = uuid
        self.blocks = []  # block chain

    def process_txns(self, txns):
        txns.insert(0, Transaction([], [Amount(self.uuid, MINING_COST)]))
        if self.blocks:
            prev_hash = self.blocks[-1].prev_hash
        else:
            prev_hash = ''

        block = Block(txns, prev_hash)
        nonce = 0
        while True:
            # mining!
            hash = get_hash(block.todict(nonce))
            if hash.startswith('0'):
                block.nonce = nonce
                self.blocks.append(block)
                return block, hash
            nonce += 1
