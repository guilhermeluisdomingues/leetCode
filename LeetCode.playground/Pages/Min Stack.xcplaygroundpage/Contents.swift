//: [Previous](@previous)

import Foundation

class MinStack {

    private var stack: [Int]
    private var minValueBuffer: [Int]

    init() {
        self.stack = []
        self.minValueBuffer = []
    }
    
    func push(_ val: Int) {
        var auxStack: [Int] = []
        auxStack.append(val)
        auxStack.append(contentsOf: stack)
        stack = auxStack
    }
    
    func pop() {
        stack.removeFirst(1)
    }
    
    func top() -> Int {
        guard stack.count > 0 else { return -1 }
        return stack[0]
    }
    
    func getMin() -> Int {
        stack.min() ?? -1
    }
}

//: [Next](@next)

let minStack = MinStack();
minStack.push(-2);
minStack.push(0);
minStack.push(-3);
minStack.getMin(); // return -3
minStack.pop();
minStack.top();    // return 0
minStack.getMin(); // return -2

