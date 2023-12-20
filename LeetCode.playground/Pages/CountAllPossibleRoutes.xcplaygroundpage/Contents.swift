//: [Previous](@previous)

import Foundation

func countRoutes(_ locations: [Int], _ start: Int, _ finish: Int, _ fuel: Int) -> Int {
    
    var nodes: [[Int]] = .init(repeating: Array(repeating: 0, count: locations.count), count: locations.count)
    
    // Initializing all nodes with the correspondent weight
    for outerIndex in 0..<locations.count {
        for innerIndex in 0..<locations.count {
            let weight: Int = locations[outerIndex] - locations[innerIndex]
            nodes[outerIndex][innerIndex] = weight < 0 ? weight * -1 : weight
        }
    }
    
    let startNode: [Int] = nodes[start]
    
    var currentNodeIndex: Int = 0
    var currentNode: [Int] = nodes[currentNodeIndex]
    var currentFuel: Int = 0
    var shouldStop: Bool = false
    
    while(!shouldStop) {
        
        if currentNode[currentNodeIndex] + startNode[currentNodeIndex]
    }
    
    return 0
}

var greeting = countRoutes([2,3,6,8,4], 1, 3, 5)

//: [Next](@next)
