//: Playground - noun: a place where people can play

import Foundation

func calculateFineOfBook(returned returnDate: DateComponents, expected expectedDate: DateComponents) -> String {
    var fine = 0
    
    guard returnDate.date!.compare(expectedDate.date!) != ComparisonResult.orderedSame else {
        return "\(fine)"
    }
    
    guard returnDate.date!.compare(expectedDate.date!) != ComparisonResult.orderedAscending else {
        return "\(fine)"
    }
    
    if returnDate.year! > expectedDate.year! {
        fine = 10000
    } else {
        let result = Calendar.current.dateComponents([.year, .month, .day], from: expectedDate, to: returnDate)
        
        let _ = result.year
        let month = result.month
        let day = result.day
        
        if returnDate.month! > expectedDate.month! {
            fine = 500 * month!
        } else if day! > 0 {
            fine = 15 * day!
        }
        
//        print("\(year) \(month) \(day)")
    }
   
    return "\(fine)"
}

var actual = DateComponents()
actual.calendar = Calendar.current
actual.year = 1234
actual.month = 12
actual.day = 23

var expected = DateComponents()
expected.calendar = Calendar.current
expected.year = 2468
expected.month = 9
expected.day = 19

print(calculateFineOfBook(returned: actual, expected: expected))
