//: [Previous](@previous)

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    guard nums.count > 1 else { return [] }
    
    var leftIndex: Int = 0
    var rightIndex: Int = nums.count - 1
    var response: [Int] = []
    let sortedNums: [Int] = nums.sorted()
    
    for _ in 0..<nums.count {
        let sum: Int = sortedNums[leftIndex] + sortedNums[rightIndex]
        
        if sum == target {
            let firstIndex: Int = nums.firstIndex(of: sortedNums[leftIndex]) ?? -1
            let secondIndex: Int = nums.lastIndex(of: sortedNums[rightIndex]) ?? -1
            return [firstIndex, secondIndex]
        } else if sum < target {
            leftIndex += 1
        } else {
            rightIndex -= 1
        }
    }
    
    return response
}

var nums = [2,7,11,15]
var target = 9
twoSum(nums, target)

nums = [3,2,4]
target = 6
twoSum(nums, target)

nums = [3,3]
target = 6
twoSum(nums, target)

//: [Next](@next)
