import Cocoa

//Now that you understand how protocols and extensions work, it’s time to pause our learning and take on a challenge so you can put it all into practice.

//Your challenge is this: make a protocol that describes a building, adding various properties and methods, then create two structs, House and Office, that conform to it. Your protocol should require the following:

//A property storing how many rooms it has.
//A property storing the cost as an integer (e.g. 500,000 for a building costing $500,000.)
//A property storing the name of the estate agent responsible for selling the building.
//A method for printing the sales summary of the building, describing what it is along with its other properties.

protocol Building{
    var rooms: Int {get}
    var cost: Int {get}
    var agent: String {get}
    func salesSummary()
}

struct House: Building{
    var rooms: Int
    var cost: Int
    var agent: String
    func salesSummary() {
        print("This beautiful house is located in Gaborone, Botswana with \(rooms) rooms and costs an eye watering P\(cost) and is sold by \(agent)")
    }
}

let house = House(rooms: 5, cost: 50_000, agent: "John")
house.salesSummary()

print()

struct Office: Building{
    var rooms: Int
    var cost: Int
    var agent: String
     func salesSummary() {
         print("This office building has \(rooms) rooms and costs an eye watering P\(cost) and is sold by \(agent)")
     }
}

let office = Office(rooms: 200, cost: 500_000, agent: "Sarah Melic")
office.salesSummary()
