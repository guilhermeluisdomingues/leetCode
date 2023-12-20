//: [Previous](@previous)

import Foundation

func longestPalindrome(_ s: String) -> String {
    guard s.count > 0, s.count <= 1000 else { return "" }
    var result: String = ""

    var stringDict: [Int: String] = [:]

    for outterIndex in 0..<s.count {
        var firstLetterIndex = String.Index(utf16Offset: outterIndex, in: s)
        var firstLetter: String = String(s[firstLetterIndex])
        stringDict[outterIndex] = firstLetter
        print(stringDict)
        
        for innerIndex in (outterIndex + 1)..<s.count {
            var secLetterIndex = String.Index(utf16Offset: innerIndex, in: s)
            var secLetter: String = String(s[secLetterIndex])
            if secLetter == firstLetter { break }

            stringDict[outterIndex]?.append(secLetter)
        }
    }

    let plainStringDict: [String] = stringDict.values.map({ $0 })
    
    plainStringDict.forEach { str in
        let reversedString: String = String(str.reversed())
        if str == reversedString {
            result = str
            return
        }
    }
    
    return result
}

longestPalindrome("aba")

//: [Next](@next)
