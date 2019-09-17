//: Playground - noun: a place where people can play

let socks = [10, 20, 20, 10, 10, 30, 50, 10, 20]

func sockMerchant(n: Int, ar: [Int]) -> Int {
    
    var pairs = [Int:Int]()
    
    for s in ar {
        pairs[s] = pairs[s] == nil ? 1 : pairs[s]! + 1
    }
    
    let r = pairs.reduce(0) { ( result: Int, arg1) -> Int in
        
        let (_, value) = arg1
        let pairs = value / 2
        return result + pairs
    }
    return r
}

let result = sockMerchant(n: socks.count, ar: socks)
print(result)
