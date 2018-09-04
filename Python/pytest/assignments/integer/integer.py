def parse(txt):
    res = []
    for item in txt.split(','):
        res.append(int(item))
    return res
