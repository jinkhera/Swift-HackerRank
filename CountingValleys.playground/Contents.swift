//: Playground - noun: a place where people can play

func countingValleys(n: Int, s: String) -> Int {
    var currentStep = 0 //sea level
    
    var valleys = 0
    for step in s {
        let upOrDown = step == "D" ? -1 : 1
        // if returning to sea level and last step was UP then you came out of a valley
        valleys += (currentStep + upOrDown) == 0 && upOrDown > 0 ? 1 : 0
        currentStep += upOrDown
    }
    
    return valleys
}

let s = "UDDDUDUU"
let n = s.count
let valleys = countingValleys(n: n, s: s)
print(valleys)
