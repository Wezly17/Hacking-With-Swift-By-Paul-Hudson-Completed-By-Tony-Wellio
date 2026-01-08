import Cocoa

//**Checkpoint 2**

//Step 1 We create our array.
var groceries = ["Potatoes", "Strawberries", "Beef", "Banana", "Ham", "Cheese", "Pork", "Chicken", "Chicken", "Grapes", "Grapes", "Mince"]

//Step 2 we can now print our array.
//groceries.count gives the total number of items in the array.
print("Total items in array: \(groceries.count)")

//Step 3 We can now create a Set using our array.
//Set(groceries).count gives the number of unique items.
let uniqueGroceries = Set(groceries)

//Step 4 and when we print our Set it will show us the number of usique items.
print("Unique items in array: \(uniqueGroceries.count)")
