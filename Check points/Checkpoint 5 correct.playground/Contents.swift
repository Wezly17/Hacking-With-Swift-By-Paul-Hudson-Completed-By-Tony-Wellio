import Cocoa

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

// Filter out even numbers
let oddNumbers = luckyNumbers.filter { $0 % 2 != 0 }

// Sort the remaining numbers in ascending order
let sortedOddNumbers = oddNumbers.sorted()

// Map the sorted numbers to the desired format and print them
sortedOddNumbers.forEach { number in
    print("\(number) is a lucky number")
}
