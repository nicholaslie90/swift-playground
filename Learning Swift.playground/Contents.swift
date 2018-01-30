//: Playground - noun: a place where people can play

import UIKit

//Declaring variables
var myVariable = 42
myVariable = 50
let myConstant = 42


//Implicit and Explicit variables
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble:Double = 70


//Experiment
let myFloat = 4


//Combining types
let label = "The width is "
let width = 94
let widthLabel = label + String(width)


//Printing string literals
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."


//Experiment
let personHeight = 175.5
let helloMister =
"""
Mr. Kwan is \(personHeight)cm tall
He is a business man.
From Korea.
"""


//Multi-line strings
let quotation = """
Even though there's whitespace to the left, the actual lines aren't indented.
Except for this line.
Double quotes (") can appear without being escaped.
I still have \(apples + oranges) pieces of fruit.
"""


//Arrays
var shoppingList = ["catfish", "water", "tulips", "blue paint",] //You're allowed to use comma at the end
shoppingList[1] = "bottle of water"


//Dictionary
var occupations = [
    "Malcolm" : "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"


//Declaring empty array and dictionaries
let emptyArray = [String]()
let emptyDictionary = [String: Float]()
shoppingList = []
occupations = [:]


//For-in loops
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores { //Parentheses around the conditionals are optional
    if score > 50 { //Parenthese around the conditionals are optional
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print("For-in loops: \(teamScore)")


//Declaring optional variables
var optionalString:String? = "Hello"
print("Optional string: \(optionalString = nil)")

var optionalName:String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

let nickName:String? = nil
let fullName:String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"


//Switch-cases
let vegetable = "red pepper"
switch (vegetable){
case "celery":
    print("Switch-case: Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("Switch-case: That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print ("Switch-case: Is it a spicy \(x)?")
default:
    print("Switch-case: Everything tastes good in soup.")
}

let interestingNumbers = [
    "Prime" : [2,3,5,7,11,13],
    "Fibonacci" : [1,1,2,3,5,8],
    "Square" : [1,4,9,16,25]
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print("For-in loops (interestingNumbers): \(largest)")


//While loops
var n = 2
while n < 100 {
    n *= 2
}
print("While loops: \(n)")


//Repeat-while loops
var m = 2
repeat {
    m *= 2
} while m < 100
print ("Repeat-while loops: \(m)")

//For-in with range
var total = 0
for i in 0..<4 {
    total += i
}
print("For-in with range: \(total)")


//Declaring functions
func greet(person:String, day:String)->String{
    return "Hello \(person), today is \(day)."
}
print("Declaring functions:", greet(person: "Bob", day: "Tuesday"))

//No-argument functions
func greet(_ person:String, on day:String)->String {
    return "Hello \(person), today is \(day)."
}
print("No-argument functions:", greet("John", on: "Wednesday"))


//Tuple for compound value
func calculateStatistics(scores: [Int])-> (min: Int, max: Int, sum: Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print("Tuple for compound value:", statistics.sum)
print("Tuple for compound value:", statistics.1)


//Nested functions
func returnFifteen()->Int{
    var y = 10
    func add(){
        y+=5
    }
    add()
    return y
}
print("Nested functions:", returnFifteen())


//Function taking another function as argument
func makeIncrementer() -> ((Int)->Int) {
    func addOne(number:Int)->Int{
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
print("Function taking another function as argument:", increment(7))

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number:Int)->Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
print("hasAnyMatches:",hasAnyMatches(list:numbers, condition:lessThanTen))


//Using in to separate the arguments and return type from the body
print("Using in:", numbers.map(
    { // Define closures like this
        (number:Int) -> Int in
        let result = 3 * number
        return result
    }
))


//Experiment: rewrite the closure. If odd numbers, return 0
print("Return 0 if odd:", numbers.map({
    (number:Int) -> Int in
    if (number % 2 != 0){
        return 0
    }
    else {
        return number
    }
}));


//Implicit mapping
let mappedNumbers = numbers.map({ number in 3 * number})
print("Implicit mapping:", mappedNumbers)


//Referring parameters by number instead of name
let sortedNumbers = numbers.sorted { $0 > $1 }
print("Sorted Numbers:", sortedNumbers)


//Declaring a class
class Shape {
    var numberOfSides = 0 // Declaring class properties
    func simpleDescription()->String {
        return "A shape with \(numberOfSides) sides."
    }
}
//Instantiating a class
var shape = Shape()
shape.numberOfSides = 7 //Assign class properties
var shapeDescription = shape.simpleDescription();


//Class with initializer (or constructor in other languages)
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    //Initializer
    init(name: String){
        self.name = name //"self" is similar to "this"
    }
    
    func simpleDescription()->String {
        return "A shape with \(numberOfSides) sides."
    }
}


//Inheriting classes and overriding
class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength:Double, name:String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
print("Area:", test.area(), "," , test.simpleDescription())


//Properties with getter and setter
class EquilateralTriangle : NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String){
        //Setting the value of properties that the subclass declares
        self.sideLength = sideLength
        
        //Calling the superclass's initializer
        super.init(name:name)
        
        //Changing the value of properties defined by the superclass. Any additional setup work that uses methods, getters or setters can also be done at this point.
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)"
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print("Triangle perimiter:", triangle.perimeter)
triangle.perimeter = 9.9
print("Triangle sideLength (implicit setter):", triangle.sideLength)


//If you don't need to compute the property but still need to provide code that is run before and after setting a new value, use willSet and didSet
class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
    
}
var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print("TriangleAndSquare's square sideLength:", triangleAndSquare.square.sideLength);
print("TriangleAndSquare's triangle sideLength:", triangleAndSquare.triangle.sideLength);
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print("TriangleAndSquare's square sideLength:", triangleAndSquare.square.sideLength)
print("TriangleAndSquare's triangle sideLength:", triangleAndSquare.triangle.sideLength)


//Optional values
let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength


//Creating enumerations
enum Rank: Int {
    case ace = 1 //If not set, default value is 0
    case two, three, four, five, six, seven, eight, nine, ten //The rest of the values are assigned automatically accordingly (2,3,4,etc)
    case jack, queen, king
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.ace
let twoRawValue = Rank.two.rawValue
print("Ace:", ace)
print("twoRawValue:", twoRawValue)


//Instantiating enums from rawValue
if let convertedRank = Rank(rawValue:3){
    let threeDescription = convertedRank.simpleDescription()
    print("threeDescription", threeDescription)
}


enum Suit {
    case spades, hearts, diamonds, clubs
    func simpleDescription()->String{
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()


enum ServerResponse {
    case result(String, String)
    case failure(String)
}
let success = ServerResponse.result("6 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")
switch success {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure.. \(message)")
}
