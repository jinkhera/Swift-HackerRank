//: Playground - noun: a place where people can play



func diagonalDifference(arr: [[Int]]) -> Int {
    // Write your code here
    var diff = 0
    // we assume it's a square
    // get first row's length, this will tell us length of diagonal and rows
    let rows = arr[0].count
    
    // we can now loop through diagonally
    // store both diagonal numbers
    var leftRightDiagonalNumbers = [Int]()
    var rightRightDiagonalNumbers = [Int]()
    
    var colIndexLR = 0
    var colIndexRL = rows - 1
    
    for rowIndex in 0...rows - 1 {
        let a = arr[rowIndex][colIndexLR]
        let b = arr[rowIndex][colIndexRL]
        leftRightDiagonalNumbers.append(a)
        rightRightDiagonalNumbers.append(b)
        colIndexLR += 1
        colIndexRL -= 1
    }
    
    // sum up
    let sumLR = leftRightDiagonalNumbers.reduce(0){ $0 + $1 }
    let sumRL = rightRightDiagonalNumbers.reduce(0){ $0 + $1 }
    
    // absolute didd
    diff = abs(sumLR - sumRL)
    
    return diff
}

// Each of the next  lines describes a row, arr[i], and consists of n space-separated integers arr[i][j].
let arr: [[Int]] = [[11, 2, 4,], [4, 5, 6], [10, 8, -12]]
let diff = diagonalDifference(arr: arr)
print(diff)
