//: Playground - noun: a place where people can play

import Foundation

// MARK: - Level-Order Traversal (BFS)

// MARK: -  Basic algorithm
//levelOrder(BinaryTree t) {
//    if(t is not empty) {
//        // enqueue current root
//        queue.enqueue(t)
//
//        // while there are nodes to process
//        while( queue is not empty ) {
//            // dequeue next node
//            BinaryTree tree = queue.dequeue();
//
//            process tree's root;
//
//            // enqueue child elements from next level in order
//            if( tree has non-empty left subtree ) {
//                queue.enqueue( left subtree of t )
//            }
//            if( tree has non-empty right subtree ) {
//                queue.enqueue( right subtree of t )
//            }
//        }
//    }
//}

// MARK: - Let's define a queue (remember FIFO : First In First Out)
struct Queue<T> {
    
    // vars
    var queue = [T]()
    
    // functions
    mutating func enqueue(obj: T) {
        queue.append(obj)
    }
    
    mutating func dequeue() -> T? {
        guard isEmpty() == false else {
            return nil
        }
        return queue.remove(at: 0)
    }
    
    func isEmpty() -> Bool {
        return queue.count == 0
    }
}

// MARK: - Binary Tree and Nodes
class Node {
    var data: Int
    var left: Node?
    var right: Node?
    
    init(d : Int) {
        data  = d
    }
} // End of Node class

// Start of Tree class
class Tree {
    var queue = Queue<Node>()
    
    func insert(root: Node?, data: Int) -> Node? {
        if root == nil {
            return Node(d: data)
        }
        
        if data <= (root?.data)! {
            root?.left = insert(root: root?.left, data: data)
        } else {
            root?.right = insert(root: root?.right, data: data)
        }
        
        return root
    }
    
    func levelOrder(root: Node?) -> Void {
        // Complete the function
        guard let node = root else {
            return
        }
        
        queue.enqueue(obj: node)
        
        while queue.isEmpty() == false {
            if let n = queue.dequeue() {
                print(n.data, terminator: " ")
                
                if let left = n.left {
                    queue.enqueue(obj: left)
                }
                
                if let right = n.right {
                    queue.enqueue(obj: right)
                }
            }
        }
        
    } // End of levelOrder function
    
    
} // End of Tree class

var root: Node?
let tree = Tree()

let t = [3, 5, 4, 7, 2, 1]

for i in 0..<t.count {
    let data = t[i]
    root = tree.insert(root: root, data: data)!
}

tree.levelOrder(root: root)





