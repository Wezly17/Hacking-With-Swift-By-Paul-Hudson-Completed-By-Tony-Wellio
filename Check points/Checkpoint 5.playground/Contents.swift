import Cocoa

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31,49]

//This will determain what is a even number.
let evenNumbers = luckyNumbers.filter {(number) -> Bool in
    return number % 2 == 0
}

print("Here is a list of our even numbers \(evenNumbers)")

print()
//This will sort out what our array from ascending order.
let sortedNumbers = luckyNumbers.sorted()
print("Here's a list of our numbers from lowest to highest: \(sortedNumbers)")

print()
//This will let us print a list of our lucky numbers:
let bingoNumbers = luckyNumbers.map {(number: Int) -> String in
    switch number {
        case 7, 15, 21, 31, 33, 49:
            return "\(number) is a Lucky Number"
        default:
            return "\(number) is NOT a Lucky Number"
        }
}

//print each item 1 number per line.
for bingoNumber in bingoNumbers{
    print(bingoNumber)
}




