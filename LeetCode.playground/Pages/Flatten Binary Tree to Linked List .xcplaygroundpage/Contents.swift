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

var visitedNodes: [Int] = []
func flatten(_ root: TreeNode?) {
    visit(root, &visitedNodes)
    
    var treeNode = build(root, counter: visitedNodes.count)
}

func build(_ root: TreeNode?, counter: Int) -> TreeNode? {
    if counter > 0 {
        return .init(visitedNodes[counter-1], nil, build(root, counter: counter - 1))
    }

    return nil
}

func visit(_ root: TreeNode?, _ visitedNodes: inout [Int]) {
    guard root != nil else {
        return
    }

    visitedNodes.append(root?.val ?? 0)
    
    visit(root?.left, &visitedNodes)
    visit(root?.right, &visitedNodes)
}

let p: TreeNode = .init(1,
                        .init(2,
                              .init(3),
                              .init(4)),
                        .init(5,
                              nil,
                              .init(6)))

flatten(p)

//: [Next](@next)
