//: Playground - noun: a place where people can play

import Foundation

var dataDict = [String]()

dataDict.append("riya riya@gmail.com")
dataDict.append("julia julia@julia.me")
dataDict.append("julia sjulia@gmail.com")
dataDict.append("julia julia@gmail.com")
dataDict.append("samantha samantha@gmail.com")
dataDict.append("tanya tanya@gmail.com")

let N = dataDict.count
var matches = [String]()
for i in 0..<N {
    let firstNameEmailIDTemp = dataDict[i]
    let firstNameEmailID = firstNameEmailIDTemp.split(separator: " ").map{ String($0) }
    
    let firstName = firstNameEmailID[0]
    
    let emailID = firstNameEmailID[1]
    
    let pattern = "@gmail"
    
    let regex = try? NSRegularExpression(
        pattern: pattern,
        options: .caseInsensitive
    )
    
    if let _ = regex?.firstMatch(in: emailID, options: [], range: NSRange(location: 0, length: emailID.utf16.count)) {
        matches.append(firstName)
    }
}

matches.sort { $0 < $1}
matches.map {print($0)}

