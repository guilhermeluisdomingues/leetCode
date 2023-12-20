//: [Previous](@previous)

import Foundation

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    var appendedNums: [Int] = nums1
    appendedNums.append(contentsOf: nums2)
    appendedNums = appendedNums.sorted() // O(nlogn)
    
    let middleIndex: Int = appendedNums.count/2
    if appendedNums.count % 2 == 0 {
        return Double(appendedNums[middleIndex] + appendedNums[middleIndex - 1]) / 2.0
    }
    
    return Double(appendedNums[middleIndex])
}

var nums1 = [1,3]
var nums2 = [2]
findMedianSortedArrays(nums1, nums2)

nums1 = [1,2]
nums2 = [3,4]
findMedianSortedArrays(nums1, nums2)

//: [Next](@next)
