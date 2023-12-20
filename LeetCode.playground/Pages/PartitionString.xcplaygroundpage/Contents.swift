//: [Previous](@previous)

import Foundation

func partitionString(_ s: String) -> Int {

    var counter: Int = 0
    var buffer: String = s.first!.lowercased()

    s.forEach { char in
        let alreadyInArray: Bool = buffer.first(where: { $0.lowercased() == char.lowercased() }) != nil

        if alreadyInArray {
            counter += 1
            buffer = char.lowercased()
        } else {
            buffer += char.lowercased()
        }
    }
    
    return counter
}

var greeting = partitionString("abacaba")
