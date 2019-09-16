//: Playground - noun: a place where people can play

func getHeight(root: Node?) -> Int {
    // Complete the function
    // algorithm
    // h = 1 + max(getHeight(node.left), getHeight(node.right))
    if let node = root {
        let h = 1 + max(getHeight(root: node.left), getHeight(root: node.right))
        return h
    } else {
        return -1
    }
}
