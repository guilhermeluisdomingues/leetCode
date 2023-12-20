//: [Previous](@previous)

import Foundation

var height: [Int] = [1,2,3,4,5,25,24,3,4]

var biggerArea: Int = 0
var leadingIndex: Int = 0
var trailingIndex: Int = height.count - 1

for _ in 0..<height.count {
    let leadingHeight: Int = height[leadingIndex]
    let trailingHeight: Int = height[trailingIndex]
    
    let minHeight: Int = min(leadingHeight, trailingHeight)
    let width: Int = (trailingIndex + 1) - (leadingIndex + 1)
    let area: Int = minHeight * width
    
    biggerArea = area > biggerArea ? area : biggerArea
    
    if trailingHeight >= leadingHeight {
        leadingIndex += 1
    } else if (trailingIndex - 1 > 0), leadingHeight >= trailingHeight {
        trailingIndex -= 1
    }

}

biggerArea




