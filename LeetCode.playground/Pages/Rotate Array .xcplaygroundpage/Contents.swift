//: [Previous](@previous)

import Foundation

func rotate(_ nums: inout [Int], _ k: Int) {
    guard k > 0 else { return }
    
    var buffer: [Int] = Array(repeatElement(0, count: nums.count))
    for index in 0..<nums.count {
        let numsIndex = (index + k) % nums.count
        buffer[numsIndex] = nums[index]
    }
    
    nums = buffer
}

var nums = [1,2,3,4,5,6,7]
var k = 3
rotate(&nums, k)

//: [Next](@next)
