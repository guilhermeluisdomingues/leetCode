//: [Previous](@previous)

import Foundation

func groupAnagrams(_ strs: [String]) -> [[String]] {
    
    var dict: [String: [String]] = [:]
    for str in strs {
        let sortedStr = String(str.sorted())
        dict[str, default: []].append(sortedStr)
    }
    
    return Array(dict.values)
}

let strs = ["eat","tea","tan","ate","nat","bat"]
groupAnagrams(strs)

//: [Next](@next)
