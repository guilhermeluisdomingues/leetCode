//: [Previous](@previous)

import Foundation
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var resultNode: ListNode? = .init()

    var currentNode1: ListNode? = l1
    var currentNode2: ListNode? = l2
    var currentResultNode: ListNode? = resultNode
    
    var carry: Int = 0
    
    while currentNode1 != nil || currentNode2 != nil {
        var num1: Int = currentNode1?.val ?? 0
        var num2: Int = currentNode2?.val ?? 0
        let result: Int = num1 + num2 + carry

        currentResultNode?.val = result % 10
        currentResultNode?.next = .init()

        carry = result / 10
        
        print(carry)
        
        currentNode1 = currentNode1?.next
        currentNode2 = currentNode2?.next
        currentResultNode = currentResultNode?.next
    }
    
    return resultNode
}

let node1 = ListNode(2)
node1.next = ListNode(4)
node1.next?.next = ListNode(3)
let node2 = ListNode(5)
node2.next = ListNode(6)
node2.next?.next = ListNode(4)

addTwoNumbers(node1, node2)

//let node1 = ListNode(9)
//node1.next = ListNode(9)
//node1.next?.next = ListNode(9)
//let node2 = ListNode(9)
//node2.next = ListNode(9)
//let resNode = addTwoNumbers(node1, node2)

//: [Next](@next)
