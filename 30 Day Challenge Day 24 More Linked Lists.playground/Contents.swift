//: Playground - noun: a place where people can play

import Foundation

// Start of class Node
class Node {
    var data: Int
    var next: Node?
    
    init(d: Int) {
        data = d
    }
} // End of class Node

// Start of class LinkedList
class LinkedList {
    func insert(head: Node?, data: Int) -> Node? {
        if head == nil {
            return Node(d: data)
        }
        
        head?.next = insert(head: head?.next, data: data)
        
        return head
    }
    
    func display(head: Node?) {
        
        if head != nil {
            print(head!.data, terminator: " ")
            
            display(head: head?.next)
        }
    }
    // Start of function removeDuplicates
    func removeDuplicates(head: Node?) -> Node? {
        // Add your code here
        guard head != nil else {
            return nil
        }
        
        var node = head
        while node?.next != nil {
            let nodeData = node?.data
            let nextNodeData = node?.next?.data
            //print("\(nodeData) \(nextNodeData)")
            if nodeData == nextNodeData {
                node?.next = node?.next?.next
                //print("\(node?.next?.data)")/
            } else {
                node = node?.next
            }
        }
        return head
    } // End of function removeDuplicates
} // End of class LinkedList

var head: Node?
let linkedList = LinkedList()

//let t = [1, 2, 2, 3, 3, 4]
let t = [1, 1, 1, 1, 1, 1, 1]
for i in 0..<t.count {
    let data = t[i]
    head = linkedList.insert(head: head, data: data)
}

linkedList.display(head: linkedList.removeDuplicates(head: head))
