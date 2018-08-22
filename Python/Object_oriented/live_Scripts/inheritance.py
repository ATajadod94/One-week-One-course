class Pet:
    def __init__(self, name):
        self.name = name

    def describe(self):
        if isinstance(self, Dog):
            return "the dog says : Woof!"
        elif isinstnace(self, Cat):
            return  "the cat says: Meow!"

class Dog(Pet):
    def describe(self):
        return "the dog says : Woof!"

class Cat(Pet):
    def describe(self):
        return  "the cat says: Meow!"

fred = Dog("Fred")
misha = Cat("Misha")
print(fred.name + " " + fred.describe())
print(misha.name + " " + misha.describe())
