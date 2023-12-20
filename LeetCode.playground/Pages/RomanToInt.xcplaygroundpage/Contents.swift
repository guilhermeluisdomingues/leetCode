import UIKit

class Solution {
    
    private enum RomanAlgarisms: String {
        case I, V, X, L, C, D, M, none
        
        var toInteger: Int {
            switch self {
            case .I: return 1
            case .V: return 5
            case .X: return 10
            case .L: return 50
            case .C: return 100
            case .D: return 500
            case .M: return 1000
            default: return -1
            }
        }
    }
    
    func romanToInt(_ s: String) -> Int {
        var sum: Int = 0
        var convertedString: Array = Array(s)
        
        for index in stride(from: s.count - 1, through: 0, by: -1) {
            let firstNum: RomanAlgarisms = .init(rawValue: convertedString[index].uppercased()) ?? .none
            sum += firstNum.toInteger
            if index + 1 < s.count {
                let secNum: RomanAlgarisms = .init(rawValue: convertedString[index + 1].uppercased()) ?? .none
                
                if firstNum.toInteger < secNum.toInteger {
                    sum += firstNum.toInteger - secNum.toInteger
                } else {
                    sum += secNum.toInteger
                }
            }
        }
        
        return sum
    }
    
    
    func test() {
        print(romanToInt("MCMXCIV"))
    }

}
