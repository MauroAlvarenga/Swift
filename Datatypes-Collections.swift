// Collection Data Types

// Tuples - Allow different data types in the same collection

let response1 = (true, "OK", 200) // (Bool, String, Int)
let response2 = (false, "Not Found", 404)

// Useful for function return

func searchFile(name: String) -> (Bool, String) {
    var found: Bool
    var message = "";
    // Search for the file, assign something to found
    found = true
    if found {
        message = "Found your file!"
    } else {
        message = "File not found, sorry."
    }
    return (found, message)
}

// Tuple accessing

response1.0 // true
response1.1 // "OK"

let (found, message, code) = response1
print(found, message, code) // true OK 200

// Naming the values
let response3 = (found: false, message: "Internal Server Error", code: 500)
response3.found // false
response3.message // Internal Server Error
response3.code // 500

// Practice
let todaysDate = (27, 10, 2021)

let namedTodaysDate = (Month: 10, Day: 27, Year: 2021)
namedTodaysDate.Month // 10

let date = (day: 10, month: "October", year: 2021)

print("Today is \(date.month) \(date.day)th, \(date.year).")


// Ranges: 0...9 = 0, 1, 2, 3, 4, 5, 6, 7, 8 , 9
let closedRange = 1...3 // 1, 2, 3 - Both ends

let openRange = 1..<3 // 1, 2 - Includes first, but not last value

let oneSidedRange = ...5 // minus infinite to 5. Useful in arrays.

let names = ["John", "Peter", "Matheus", "Lucas"]

for name in names[...2] {
    print(name)
} // John, Peter, Matheus. Stops at 2

for name in names[2...] {
    print(name)
} // Matheus, Lucas. Starts at 2

// Practice
let myRange = 0...100
let myRangeWithout300 = 0..<300


// Arrays - Same type data

var array1: Array<Int> // Declaration
var array2: [Int] // Most used way

var arrayInt: [Int] = [] // Empty Initialization
var arrayString: [String] = [String]() // Another way

var arrayInt2: [Int] = [2, 4, 6] // Initalization with values
var arrayString2 = ["One", "Two", "Three"] // With type inference

var names2 = ["Donald", "Barack", "Christine", "Albert"]
print(names2[2]) // Christine - accessing with subscript syntax
print(names2[1...3]) // ["Barack", "Christine", "Albert"] - accessing using range

// Add elements to Arrays
names2.append("Homer") // with Array.append(element)
print(names2) // ["Donald", "Barack", "Christine", "Albert", "Homer"]

names2 += ["Lisa"] // Joining arrays

names2.insert("Bart", at: 5) // Adds "Bart" at index 5 ["Donald", "Barack", "Christine", "Albert", "Homer", "Bart", "Lisa"]
print(names2)

// Delete Array elements
names2.remove(at: 0) // Removes "Donald" at index 0
print(names2)

// Important properties
print(names2.isEmpty) // false
print(names2.count) // 6 - How many elements there are in the array

// Practice
var fruits = ["Melon", "Pera", "Sandia", "Naranja", "Manzana"]
print(fruits[1...3]) // ["Pera", "Sandia", "Naranja"]

fruits.removeSubrange(0...1) // remove a subrange. "Melon", "Pera"
print(fruits)


// Sets - NO DUPLICATES
var fruitOptions1 = Set<String>() // Declaration and initialization.
var fruitOptions2: Set<String> = [] // Same thing, another way
var ingredients: Set = ["sugar", "cream", "chocolate"] // Initialize with values.

// Add elements
fruitOptions1.insert("Apple")
fruitOptions1.insert("Coconut")
print(fruitOptions1) // ["Apple", "Coconut"
fruitOptions1.insert("Apple") // Does nothing, as the value is a duplicate

// Check if contains elemnt
ingredients.contains("sugar") // true
ingredients.contains("flour") // false

// Remove elements
ingredients.remove("cream")

// union and intersection
let oddNumbers: Set = [1, 3, 5, 7]
let evenNumbers: Set = [2, 4, 6, 8]
let primeNumbers: Set = [2, 3, 5, 7]

oddNumbers.union(evenNumbers) // [1, 2, 3, 4, 5, 6, 7, 8]
oddNumbers.intersection(primeNumbers) // [3, 5, 7]

// Practice
let modernLanguages: Set = ["Go", "Kotlin", "Swift", "TypeScript"]
let matureLanguages: Set = ["C#", "Java", "Python", "C++"]
let oldLanguages: Set = ["C", "Pascal", "Fortran", "Cobol"]

let allLanguages: Set = modernLanguages.union(matureLanguages.union(oldLanguages))


// Dictionaries - Key-Value pairs.
var HTTPresponses = [200: "OK",
                     403: "Forbidden",
                     404: "Not Found",
                     500: "Internal Server error"] // Type = [Int:String]

var dict1: Dictionary<Int, String> // Declaration
var dict2: [Int:String] // Most used way
var dict3: [Int:String] = [:] // Empty initialization

// Data accessing
var books = [123: "Sophie's World",
             145: "The Odyssey",
             274: "Aleph"]

print(books[123]!) // "Sophie's World". Without unwraping, returns an Optional.

// Add data, using subscript syntax
books[248] = "The little prince" // Adds a new value with key 248
books[274] = "Little Thumbling" // Updates value for key 274

// Erase data
books[145] = nil // one way
books.removeValue(forKey: 274) // another way

// Practice
var studentGrades = ["Albert": 10,
                     "Ignacius": 4,
                     "Peter": 7]

var visitedCities = ["Buenos Aires": true,
                     "Mar del Plata": false,
                     "Santa Fe": false,
                     "Los Angeles": true]

visitedCities["New York"] = false
visitedCities["Encarnayork"] = true





