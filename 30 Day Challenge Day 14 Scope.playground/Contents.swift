import Foundation

class Difference {
    private var elements = [Int]()
    var maximumDifference: Int
    // Write your code here
    
    public init(a: [Int]) {
        self.maximumDifference = 0
        self.elements = a
    }
    
    public func computeDifference() {
        var differences = [Int]()
        
        for n in elements {
            for m in elements {
                let diff = abs(n - m)
                differences.append(diff)
            }
        }
        differences.sort()
        if let max = differences.last {
            maximumDifference = max
        }
    }
    
} // End of Difference class

//let n = Int(readLine()!)!
//let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let a = [1, 2, 5]

let d = Difference(a: a)

d.computeDifference()

print(d.maximumDifference)
