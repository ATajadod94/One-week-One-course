import skilift as sk

def test_half_take(monkeypatch):

    def half_take(self, amount):
        amount = int(amount/2)
        if amount > self.num_people:
            amount = self.num_people
        self.num_people -= amount
        return amount

    monkeypatch.setattr(sk.Line, 'take', half_take)
    line = sk.Line(10)
    res = line.take(5)
    assert res == 2
    assert line.num_people == 8