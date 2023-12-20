//: [Previous](@previous)

import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
    guard s.count > 0 else { return 0 }
    if s.count == 1 { return 1 }

    let s: Array = Array(s)
    var auxString: String = ""
    var result: Int = 0
    var leftIndex = 0
    var rightIndex = 1
    
    if s.count == 2 {
        if s[0] == s[1] { return 1 }
        return 2
    }

    while leftIndex < s.count && rightIndex < s.count {
        let leftChar: String = String(s[leftIndex])
        let rightChar: String = String(s[rightIndex])
        
        print("left: \(leftChar), right:\(rightChar)")
        print("aux: \(auxString)")

        if !auxString.contains(rightChar) {
           rightIndex += 1
           auxString += rightChar
           result = max(result, auxString.count)
        } else {
           leftIndex += 1
           rightIndex = leftIndex + 1
           auxString = ""
        }

    }

    return result
}

lengthOfLongestSubstring("cdd")

//: [Next](@next)
