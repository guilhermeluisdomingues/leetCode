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

var currentSum: Int = 0
func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
    sum(root, targetSum)
    return false
}

func sum(_ root: TreeNode?, _ targetSum: Int) {
    guard let root = root else { return }
    
    sum(root.left, targetSum)
    sum(root.right, targetSum)
    
    if currentSum + root.val <= targetSum {
        currentSum + root.val
    }
    print(root.val)
}

let node: TreeNode = .init(5)
node.left = .init(4, .init(11, .init(7), .init(2)), nil)
node.right = .init(8, .init(13), .init(4, nil, .init(1)))
hasPathSum(node, 22)
currentSum

//: [Next](@next)
