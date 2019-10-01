import Foundation

class Node {
    let data: Int
    var next: Node?
    
    init(data: Int) {
        self.data = data
    }
}

func insert(head: Node?, data: Int!) -> Node? {
    // Enter your code here.
    let node = Node(data: data)
    if head != nil {
        var current = head
        var check = true
        repeat {
            if current!.next == nil {
                current!.next = node
                check = false
            } else {
                current = current!.next
            }
        }
            while check == true
        
        return head
    } else {
        return node
    }
}

func display(head: Node?) {
    var current = head
    
    while current != nil {
        print(current!.data, terminator: " ")
        current = current!.next
    }
}

var head: Node?
let n: Int = Int(readLine()!)!

for _ in 0..<n {
    let element = Int(readLine()!)!
    head = insert(head: head, data: element)
}

display(head: head)
