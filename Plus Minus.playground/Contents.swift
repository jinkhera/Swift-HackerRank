//: Playground - noun: a place where people can play
import UIKit

func plusMinus(arr: [Int]) -> Void {
    let devisor: Double = Double(arr.count)
    
    var positive: Double = 0
    var negative: Double = 0
    var zero:Double = 0
    
    for number in arr {
        if number > 0 {
            positive += 1
        } else if number < 0 {
            negative += 1
        } else {
            zero += 1
        }
    }
    
    let places = 6
    
    var positiveRatio = (positive / devisor)
    positiveRatio = roundToPlaces(value: positiveRatio, places: places)
    //positiveRatio = Double(1000000*positiveRatio/1000000)
    print(String(format: "%.6f", positiveRatio))
    
    var negativeRatio = (negative / devisor)
    negativeRatio = roundToPlaces(value: negativeRatio, places: places)
    print(String(format: "%.6f", negativeRatio))
    
    var zeroRatio = (zero / devisor)
    zeroRatio = roundToPlaces(value: zeroRatio, places: places)
    print(String(format: "%.6f", zeroRatio))
}

func roundToPlaces(value: Double, places: Int) -> Double {
    let divisor = pow(10.0, Double(places))
    //print(divisor)
    return round(value * divisor) / divisor
}

let numbers = [-4, 3, -9, 0, 4, 1]
plusMinus(arr: numbers)

