//: Playground - noun: a place where people can play

func jumpingOnClouds(c: [Int]) -> Int {
    let endIndex = c.count - 1
    var jumping = true
    var jumps = 0
    var currentCloud = 0
    while jumping {
        var step = 2
        // check not at end
        if (currentCloud + step > endIndex) { step = 1}
        
        let nextCloud = c[currentCloud + step]
        
        if nextCloud == 0 {
            currentCloud += step
        } else {
            currentCloud += 1
        }
        
        jumps += 1
        
        if currentCloud >= endIndex {
            jumping = false
        }
    }
    return jumps
}

let c = [0, 0, 1, 0, 0, 1, 0]//[0, 0, 0, 1, 0, 0]//
let jumps = jumpingOnClouds(c: c)
print(jumps)

