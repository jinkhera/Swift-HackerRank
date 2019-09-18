//: Playground - noun: a place where people can play

let s = "jdiacikk"
let n = 899491

func repeatedString(s: String, n: Int) -> Int {
    // character to find = a
    let c : Character = "a"
    // how many times does it appear in s
    let occurences = s.filter {$0 == c}
    let count = occurences.count
    // how many times does string repeat in substring of n
    let repeats = (n / s.characters.count) * count
    //print(repeats)
    // any partial repeats i.e % s.length
    let mod = (n % s.characters.count)
//    print("mod = \(mod)")
    var repeatsInSubString = 0
    if mod != 0 {
        let index = s.index(s.startIndex, offsetBy: mod)
        let subString = s.prefix(upTo: index)
//        print("sub = \(subString)")
        let occurencesInSubString = subString.filter {$0 == c}
        repeatsInSubString = occurencesInSubString.count
    }
    
    return repeats + repeatsInSubString
}

let result = repeatedString(s: s, n: n)
print(result)
