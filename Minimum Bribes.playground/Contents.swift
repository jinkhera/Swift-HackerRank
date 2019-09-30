//: Playground - noun: a place where people can play



// 1st attempt was to count bribes
//func minimumBribes(q: [Int]) -> Void {
//    var bribes = 0
//
//    var i = 1
//    for person in q {
//        let placesMoved = person - i
//        print(placesMoved)
//        if placesMoved == 0 {
//            // person has not moved
//        } else if placesMoved < 0 {
//            // person has moved back
//        } else if placesMoved > 0 && placesMoved <= 2 {
//            // person has moved forward
//            bribes += placesMoved
//        } else {
//            // not possible, moved too far
//            bribes = -1
//            break;
//        }
//        i += 1
//    }
//    print(bribes == -1 ? "Too chaotic" : bribes)
//}
//
//minimumBribes(q: q)

//let q = [2, 1, 5, 3, 4]
//let q = [2, 5, 1, 3, 4]
//let q = [1, 2, 5, 3, 4, 7, 8, 6]
let q = [1, 2, 5, 3, 7, 8, 6, 4]

// 2nd attempt was to number of times a person bribed
func minimumBribes(q: [Int]) -> Void {
    var bribes = 0
    
    var i = 1
    for person in q {
        let placesMoved = person - i
        
        if placesMoved > 2 {
            // not possible, moved too far
            bribes = -1
            break;
        }
        else {
            // now check how many times overtaken/bribed
            if person < i {
                for j in person..<q.count {
                    bribes += 1
                    //print("person = \(person) j = \(j) q = \(q[j])")
                    if person == q[j]    {
//                        print("person = \(person) j = \(j)")
                        break
                    }
                }
            } else {
                //print("Person = \(person) Not bribed")
            }
        }
        
        i += 1
    }
    print(bribes == -1 ? "Too chaotic" : bribes)
}

minimumBribes(q: q)
