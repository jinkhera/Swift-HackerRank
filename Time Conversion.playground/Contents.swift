//: Playground - noun: a place where people can play

import UIKit

func timeConversion(s: String) -> String {
    /*
     * Write your code here.
     */
    var result = "error"
    let dfIn = DateFormatter()
    dfIn.dateFormat = "hh:mm:ssa"
//    dfIn.amSymbol = "AM"
//    dfIn.pmSymbol = "PM"
    
    if let dateIn = dfIn.date(from: s) {
        let dfOut = DateFormatter()
        dfOut.dateFormat = "HH:mm:ss"
        result = dfOut.string(from: dateIn)
    }
    return result
}

let input = "12:00:00AM"
let output = timeConversion(s: input)
print(output)
