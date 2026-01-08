import Cocoa

//Now that you understand how classes work, and, just as importantly, how they are different from structs, it’s time to tackle a small challenge to check your progress.

//Your challenge is this: make a class hierarchy for animals, starting with Animal at the top, then Dog and Cat as subclasses, then Corgi and Poodle as subclasses of Dog, and Persian and Lion as subclasses of Cat.

//But there’s more:

// 1. The Animal class should have a legs integer property that tracks how many legs the animal has.
// 2. The Dog class should have a speak() method that prints a generic dog barking string, but each of the subclasses should print something slightly different.
// 3. The Cat class should have a matching speak() method, again with each subclass printing something different.
// 4. The Cat class should have an isTame Boolean property, provided using an initializer.

//I’ll provide some hints in a moment, but first I recommend you go ahead and try it yourself.

class Animal{
    let legs: Int
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal{
    var speak: String
    init(speak: String, legs: Int) {
        self.speak = speak
        super.init(legs: legs)
    }
}

class Corgi: Dog{
    func corgiBark(){
        print("Corgis sound like this: \(speak). And they have \(legs) legs")
    }
}

var corgi = Corgi(speak: "Bark Bark", legs: 4)
corgi.corgiBark()

print()

class Poodle: Dog{
    func poodleBark(){
        print("Poodles sound like this: \(speak). And they have \(legs) legs")
    }
}
var poodles = Poodle(speak: "Bark Bark", legs: 4)
poodles.poodleBark()

print()

class Cat: Animal{
    let isTame: Bool
    init(isTame: Bool, legs: Int) {
        self.isTame = isTame
        super.init(legs: legs)
    }
}

class Lion: Cat{
    func printLion(){
        print("It is \(isTame) you cannot tame a Lion. But they do have \(legs) legs like dogs.")
    }
}

var lion = Lion(isTame: false, legs: 4)
lion.printLion()

print()

class Persian: Cat{
    func printPersian(){
        print("It is \(isTame) you can tame a Persian cat. And they do have \(legs) legs like dogs.")
    }
}

var persian = Persian(isTame: true, legs: 4)
persian.printPersian()
