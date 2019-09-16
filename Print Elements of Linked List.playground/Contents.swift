//: Playground - noun: a place where people can play

/*
 * For your reference:
 *
 * SinglyLinkedListNode {
 *     data: Int
 *     next: SinglyLinkedListNode?
 * }
 *
 */
func printLinkedList(head: SinglyLinkedListNode?) -> Void {
    var node = head
    while(node?.next != nil) {
        if let value = node?.data{
            print(value)
        }
        node = node?.next
    }
    
}
