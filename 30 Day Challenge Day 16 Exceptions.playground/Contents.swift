//: Playground - noun: a place where people can play

import UIKit

/*
 * Define an ErrorType
 */
enum StringToIntTypecastingError: Error {
    case BadString
}

/*
 * If typecasting is not possible, throw exception, otherwise return the Integer value
 */
func stringToInt(inputString: String) throws -> Int {
    // Write your code here
    if let result = Int(inputString) {
        return result
    } else {
        throw StringToIntTypecastingError.BadString
    }
}

do {
    try print(stringToInt(inputString: "12"))
} catch StringToIntTypecastingError.BadString {
    print("Bad String")
}
