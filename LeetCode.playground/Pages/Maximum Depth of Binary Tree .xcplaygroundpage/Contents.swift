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

func maxDepth(_ root: TreeNode?) -> Int {
    if root == nil {
        return 0
    } else {
        let lDepth = maxDepth(root?.left)
        let rDepth = maxDepth(root?.right)
        
        if lDepth > rDepth {
            return lDepth + 1
        } else {
            return rDepth + 1
        }
    }
}

//maxDepth(.init())

//let node: TreeNode = .init(3)
//node.left = .init(9)
//node.right = .init(20, .init(15), .init(7))
//maxDepth(node)

let node2: TreeNode = .init(1)
node2.right = .init(2)
maxDepth(node2)

//: [Next](@next)
