//: Playground - noun: a place where people can play

import UIKit

print("Hello, world!")

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
print(teamScore)

//Declaring optional variables
var optionalString:String? = "Hello"
print(optionalString = nil)

var optionalName:String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

let nickName:String? = nil
let fullName:String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"

let vegetable = "red pepper"
switch (vegetable){
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print ("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
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
print(largest)

//While loops
var n = 2
while n < 100 {
    n *= 2
}
print(n)

//Repeat-while loops
var m = 2
repeat {
    m *= 2
} while m < 100
print (m)

//For-in with range
var total = 0
for i in 0..<4 {
    total += i
}
print(total)

//Declaring functions
func greet(person:String, day:String)->String{
    return "Hello \(person), today is \(day)."
}
print(greet(person: "Bob", day: "Tuesday"))

//No-argument functions
func greet(_ person:String, on day:String)->String {
    return "Hello \(person), today is \(day)."
}
print(greet("John", on: "Wednesday"))

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
print(statistics.sum)
print(statistics.1)


