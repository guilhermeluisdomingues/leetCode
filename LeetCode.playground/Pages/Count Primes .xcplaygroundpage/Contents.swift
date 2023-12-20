//: [Previous](@previous)

import Foundation

func countPrimes(_ n: Int) -> Int {
    guard n > 2 else { return 0 }
    
    var buffer: [Int] = Array(repeatElement(0, count: n))
    buffer = Array(buffer.dropLast())
    
    for index in 0..<buffer.count {
        buffer[index] = index + 1
    }

    for index in 0..<buffer.count {
        let num: Int = buffer[index]
        if num < 2 { continue }
        
        for innerIndex in index+1..<buffer.count {
            let auxNum: Int = buffer[innerIndex]
            if auxNum < 0 { continue }
            
            print("num: \(num) | aux: \(auxNum) | div: \(auxNum % num)")
            
            if auxNum % num == 0 {
                buffer[innerIndex] = -1
            }
        }
    }
    
    return buffer.filter({ $0 > -1 }).count - 1
}

countPrimes(3)

//: [Next](@next)
