//: [Previous](@previous)

import Foundation

func removeDuplicates(_ nums: inout [Int]) -> Int {
    return Set(nums).sorted().count
}

func removeDuplicates_sol(_ nums: inout [Int]) -> Int {
    guard nums.count > 1 else { return nums.count }
    
    var idx = 0
    for n in nums where n != nums[idx] {
        idx += 1
        nums[idx] = n
        print("n: \(n) | idx: \(idx) | nums[idx]: \(nums[idx])")
    }
    return idx + 1
}

var nums = [0,0,1,1,1,2,2,3,3,4]
removeDuplicates_sol(&nums)
nums

//: [Next](@next)
