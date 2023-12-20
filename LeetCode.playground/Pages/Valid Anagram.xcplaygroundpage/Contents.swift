//: [Previous](@previous)

import Foundation

func isAnagram(_ s: String, _ t: String) -> Bool {
    guard s.count == t.count else { return false }

    var isAnagram: Bool = true
    
    let sortedS = s.sorted()
    let sortedT = t.sorted()
    
    for index in 0..<s.count {
        if sortedS[index] != sortedT[index] {
            isAnagram = false
            break
        }
    }
    
    return isAnagram
}

let s = "aacc"
let t = "ccac"

isAnagram(s, t)

//: [Next](@next)
