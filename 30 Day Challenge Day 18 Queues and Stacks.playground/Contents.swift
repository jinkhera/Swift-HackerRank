//: Playground - noun: a place where people can play

import Foundation

class Solution {
    //Write your code here
    private var queue = [Character]()
    private var stack = [Character]()
    
    // MARK: - the stack (LIFO)
    func pushCharacter(ch: Character) {
        stack.append(ch)
    }
    
    func popCharacter() -> Character? {
        return stack.popLast()
    }
    
    // MARK: - the queue (FIFO)
    func enqueueCharacter(ch: Character) {
        queue.append(ch)
    }
    
    func dequeueCharacter() -> Character? {
        if let ch = queue.first {
            queue.removeFirst()
            return ch
        }
        return nil
    }
}


let obj = Solution()
let s = "racecar"

// push/enqueue all the characters of string s to stack.
for character in s {
    obj.pushCharacter(ch: character)
    obj.enqueueCharacter(ch: character)
}

var isPalindrome = true

// pop the top character from stack.
// dequeue the first character from queue.
// compare both the characters.
for _ in 0..<(s.count / 2) {
    if obj.popCharacter() != obj.dequeueCharacter() {
        isPalindrome = false
        
        break
    }
}

// finally print whether string s is palindrome or not.
if isPalindrome {
    print("The word, \(s), is a palindrome.")
} else {
    print("The word, \(s), is not a palindrome.")
}
