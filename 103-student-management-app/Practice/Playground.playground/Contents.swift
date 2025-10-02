// Collections

// Arrays - YES Ordered | NO Unique Items (will duplicate) | NO KEY: VALUE

let arr1: [String] = ["Richard", "Ramses", "Nar", "Samantha", "Mia", "Samantha"]
let arr2: [Int] = [1,1,2,3,2,32]


print(arr1)
print(arr2)

// Sets - NO Ordered | YES Unique Items (will NOT duplicate) | NO KEY: VALUE
//              ^syntax - Set<(TYPE)>
//              ^Sets also don't respect the order ALAWAYS changes

let arr1Set: Set<String> = ["Richard", "Ramses", "Nar", "Samantha", "Mia", "Samantha"]
let arr2Set: Set<Int> = [1,1,2,3,2,32]


print(arr1Set)
print(arr2Set)

// Dictionairies - NO Ordered | NO Unique Items (will duplicate) | YES KEY: VALUE
//          ^ Collection of elements with key and value pairs
//          ^ Key: Value allows us to access things in groups
//          ^ Access by key
//          ^ Prints optional because it may not exist later

var personNameAndAge: [String: Int] = ["Samantha": 21, "Mia": 5]
// this person with a key and value.

print(personNameAndAge)

