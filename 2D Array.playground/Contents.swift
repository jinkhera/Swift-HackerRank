import Foundation

// Complete the hourglassSum function below.
func subsets(matching subset: [[Int]], from arr: [[Int]]) -> [[Int]] {
    var subsets = [[Int]]()
    for i in 1...(arr.count - 2) {
        //print("i = \(i)")
        let cols = arr[i - 1]
        for j in 1...(cols.count - 2) {
            //print("j = \(j)")
            var subset = [Int]()
            subset.append(cols[j - 1])
            subset.append(cols[j])
            subset.append(cols[j + 1])
            
            subset.append(0)
            subset.append(arr[i + 1 - 1][j])
            subset.append(0)
            
            subset.append(arr[i + 2 - 1][j - 1])
            subset.append(arr[i + 2 - 1][j])
            subset.append(arr[i + 2 - 1][j + 1])
            
            subsets.append(subset)
        }
    }
    return subsets
}

func hourglassSum(arr: [[Int]]) -> Int {
    // collect array of hourglasses
    let subsetIndecies = [[0,1,2], [1], [0,1,2]]
    let subset = subsets(matching:subsetIndecies, from: arr)
    //print(subset)
    var summedValues: [Int] = subset.map { $0.reduce(0){$0 + $1}}
    //print(summedValues)
    summedValues.sort(by:>)
    print(summedValues)
    return summedValues.first ?? 0
}

var array = [[Int]]()
array.append([1, 1, 1, 0, 0, 0])
array.append([0, 1, 0, 0, 0, 0])
array.append([1, 1, 1, 0, 0, 0])
array.append([0, 0, 2, 4, 4, 0])
array.append([0, 0, 0, 2, 0, 0])
array.append([0, 0, 1, 2, 4, 0])

let result = hourglassSum(arr: array)

print(result)

