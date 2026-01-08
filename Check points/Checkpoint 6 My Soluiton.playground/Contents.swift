import Cocoa

struct Car{
    let model = "Toyota"
    let seat = 5
    var currentGear = 0
        
    mutating func gearChangeUp(){
            if currentGear < 10 {
                currentGear += 1
                print("\(model) with \(seat) seats is on gear \(currentGear)")
            } else{
                print("Gear scratching noises (Please Gear down)")
            }
        }
    
    mutating func gearChangeDown(){
            if currentGear > 0 {
                currentGear -= 1
                print("\(model) with \(seat) seats is on gear \(currentGear)")
            } else {
                print("Gear scratching noises (Please Gear up!)")
            }
        }
        
      
    }

var car = Car()
car.gearChangeUp()
car.gearChangeUp()
car.gearChangeUp()
car.gearChangeUp()
car.gearChangeUp()
car.gearChangeUp()
car.gearChangeUp()
car.gearChangeUp()
car.gearChangeUp()
car.gearChangeUp()
car.gearChangeUp()
car.gearChangeUp()



