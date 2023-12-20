//: [Previous](@previous)

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

var visitedNodes: [Int: Int] = [:]
var result: Bool = false

func hasCycle(_ head: ListNode?) -> Bool {
    guard let head = head else { return false }

    var fast: ListNode? = head.next
    var slow: ListNode? = head

    while fast != nil, slow != nil {
        fast = fast?.next?.next
        slow = slow?.next

        if fast === slow {
            return true
        }
    }

    return false
}

var head: ListNode = .init(3)
var node1: ListNode = .init(2)
var node2: ListNode = .init(0)
var node3: ListNode = .init(-4)

head.next = node1
node1.next = node2
node2.next = node3
node3.next = node1

hasCycle(head)

//: [Next](@next)
