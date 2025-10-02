import UIKit

// class - blueprint of an entity

// create a function: class. key word with class name and brackets

class Pet:CustomStringConvertible {
    
    // attributes -> Type of Data/Variables/Constants
    var name: String
    var age: Int
    var owner: String
    
    // Methods -> Behavior
    
    // init-> constructor of our .. to initialize it
    // to skip the naming you can use the underscore/
    init(name: String, age: Int, owner: String) { // constructor
        
        //
        self.name = name
        self.age = age
        self.owner = owner
    }
    
    // only in playground swift need a method to
    var description: String {
        return "name: \(name), Age: \(age), Owner: \(owner)"
    }
} // End - class Pet

// create an object: a structure of the class.

let pet1 = Pet(name: "Tate", age: 4, owner: "Fernanda")
//  new object with all the attributes given values.

//access specific attribute

print("Pet Name is: \(pet1.name)")
//                  ^^ string interpulation
// to get the output and NOT MEMORY SPACE IN PLAY GROUND ONLY
// --- need 2 things:
// 1. super class added to your class. ( see class Pet********
//                 ^ CustomStringConvertible Line 7
// 2. super method to give you the output you want.
//                 ^ var description: String {
//return "name: \(name), Age: \(age), Owner: \(owner)"
//          } LINE 27 to Line 29
print(pet1)
