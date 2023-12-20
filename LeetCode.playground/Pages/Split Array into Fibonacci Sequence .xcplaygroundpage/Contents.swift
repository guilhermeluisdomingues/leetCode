//: [Previous](@previous)

import Foundation

func splitIntoFibonacci(_ num: String) -> [Int] {
    guard num.count > 0, num.count <= 200 else { return [] }

    var result: [Int] = []
    for index in 0..<num.count-2 {
        let firstIndex = String.Index(utf16Offset: index, in: num)
        let secIndex = String.Index(utf16Offset: index + 1, in: num)
        let terIndex = String.Index(utf16Offset: index + 2, in: num)
        let firstNum: Int = Int(String(num[firstIndex])) ?? 0
        let secNum: Int = Int(String(num[secIndex])) ?? 0
        let terNum: Int = Int(String(num[terIndex])) ?? 0

        if firstNum + secNum != terNum {
            print("\(firstNum)\(secNum)\(terNum)")
            result = []
        }
        let stringResult: String = "\(firstNum)\(secNum)\(terNum)"
        result.append(Int(stringResult) ?? 0)
    }

    return result
}

//var num = "1101111"
//splitIntoFibonacci(num)

var num = "123456579"
splitIntoFibonacci(num)

//: [Next](@next)
