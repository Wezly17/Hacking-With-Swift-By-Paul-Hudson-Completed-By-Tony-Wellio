import Cocoa

// Define a struct to model a Car with properties and methods.
struct Car {
    // 'model' and 'seat' are constants since they won't change after the car is created.
    let model: String
    let seat: Int
    
    // 'currentGear' is a variable that can change, but its modification is restricted to within this struct.
    private(set) var currentGear: Int

    // The initializer allows setting the car's model, seat, and optionally starting gear (default is 0).
    init(model: String, seat: Int, currentGear: Int = 0) {
        self.model = model
        self.seat = seat
        self.currentGear = currentGear
    }

    // 'mutating' keyword allows this function to modify the 'currentGear' property, which is necessary for structs.
    mutating func gearChangeUp() {
        // This checks if the current gear is less than 10 before increasing it.
        if currentGear < 10 {
            currentGear += 1
            print("\(model) with \(seat) seats is on gear \(currentGear)")
        } else {
            // If the gear is already at the maximum, it warns the user to gear down.
            print("Gear scratching noises (Please Gear down)")
        }
    }

    // Another 'mutating' function to decrease the gear.
    mutating func gearChangeDown() {
        // This checks if the current gear is greater than 0 before decreasing it.
        if currentGear > 0 {
            currentGear -= 1
            print("\(model) with \(seat) seats is on gear \(currentGear)")
        } else {
            // If the gear is already at the minimum, it warns the user to gear up.
            print("Gear scratching noises (Please Gear up!)")
        }
    }
}


var car1 = Car(model: "Toyota", seat: 5)
car1.gearChangeUp()



