import Cocoa

// Define possible errors
enum SquareRootError: Error {
    case outOfBounds
    case noRoot
}

func integerSquareRoot(of number: Int) throws -> Int {
    // Step 1: Check for out of bounds input
    if number < 1 || number > 10_000 {
        throw SquareRootError.outOfBounds
    }
    
    // Step 2: Attempt to find the integer square root
    for i in 1...number {
        if i * i == number {
            return i
        }
    }
    
    // Step 3: If no integer square root is found, throw an error
    throw SquareRootError.noRoot
}

// Test cases
do {
    let root = try integerSquareRoot(of: 25)
    print("The square root is \(root)")
} catch {
    print("Error: \(error)")
}

do {
    let root = try integerSquareRoot(of: 26)
    print("The square root is \(root)")
} catch {
    print("Error: \(error)")
}

do {
    let root = try integerSquareRoot(of: 10001)
    print("The square root is \(root)")
} catch {
    print("Error: \(error)")
}
