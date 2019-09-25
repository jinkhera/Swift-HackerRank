// Enter your code here. Read input from STDIN. Print output to STDOUT
import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!) else { fatalError("Bad input") }

var dict = [String: String]()
for _ in 0..<n {
    guard let temp = readLine() else { fatalError("Bad input") }
    let nameNumber = temp.split(separator: " ")
    if nameNumber.count == 2 {
        dict[String(nameNumber[0])] = String(nameNumber[1])
    }
}

for _ in 0..<n {
    if let name = readLine() {
        if dict.keys.contains(String(name)) {
            if let number = dict[name] {
                print("\(name)=\(number)")
            }
        } else {
            print("Not found")
        }
    }
}

// print(n)
// print(dict)

