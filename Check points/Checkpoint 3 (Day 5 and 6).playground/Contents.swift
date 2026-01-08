import Cocoa

//Step 1 create a for loop determaniing our range.
for i in 1...100{
    //Step 2 compare what will be a multiple of 3 and 5 so we can print Fizz or Buzz.
    if (i).isMultiple(of: 3) && !(i).isMultiple(of: 5){
        print("Fizz")
    }else if (i).isMultiple(of: 5) && !(i).isMultiple(of: 3){
        print("Buzz")
    }else if (i).isMultiple(of: 3) && (i).isMultiple(of: 5){
        print("Fizz Buzz")
    }else{
        //Finally print our count from 1 to 100 so we can 
        print(i)
    }
}

