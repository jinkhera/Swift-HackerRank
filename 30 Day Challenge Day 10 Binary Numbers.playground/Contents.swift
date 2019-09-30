//: Playground - noun: a place where people can play

import UIKit

enum BinaryDigit: Int, CustomStringConvertible {
    case zero
    case one
    
    var description : String {
        switch self {
            case .zero: return "0"
            case .one: return "1"
        }
    }
}

extension Int {
    func binaryRepresentation() -> [BinaryDigit] {
        var result = [BinaryDigit]()
        var number = self
        repeat {
            let remainder = number % 2
            if remainder == 0 {
                result.insert(.zero, at: 0)
            } else {
                result.insert(.one, at: 0)
            }
            number = number / 2
        } while number > 0
        
        return result
    }
    
    func binaryRepresentation() -> String {
        let result: [BinaryDigit] = binaryRepresentation()
        
        let arr = result.map {String(describing: $0)}
        let string = arr.joined(separator: "")
        
        return string
    }
}

let result: String = 5.binaryRepresentation()
// Swift 5
//var splits: [Substring] = result.split(separator: "0", maxSplits: Int.max, omittingEmptySubsequences: true)
//var flat = splits.compactMap {$0.count}
// Swift 4
var splits = result.split(separator: "0").flatMap {$0.characters.count}
if let max = splits.sorted(by: >).first {
    print(max)
}
