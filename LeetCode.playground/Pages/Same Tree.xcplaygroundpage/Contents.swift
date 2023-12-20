//: [Previous](@previous)

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

var isValid: Bool = true
func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    if p == nil && q == nil {
        return isValid
    }

    let left = isSameTree(p?.left, q?.left)
    let rigth = isSameTree(p?.right, q?.right)
    
    isValid = p?.val == q?.val
    
    return isValid && left && rigth
}

let p: TreeNode = .init(1, .init(2), .init(3))
let q: TreeNode = .init(1, .init(2), .init(1))
isSameTree(p, q)

let p1: TreeNode = .init(1, .init(2), nil)
let q1: TreeNode = .init(1, nil, .init(2))
isSameTree(p1, q1)

//: [Next](@next)
