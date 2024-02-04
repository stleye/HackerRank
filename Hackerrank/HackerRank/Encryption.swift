//
//  Encryption.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 04/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/encryption/problem

struct Encryption {
    
    func solve() {
        print(encryption(s: "chillout"))
    }
    
    func encryption(s: String) -> String {
        var s = s.filter { $0 != " " }
        let L = s.count
        let sqrtL = sqrt(Double(L))
        
        var rows = Int(floor(sqrtL))
        let columns = Int(ceil(sqrtL))
        
        if rows * columns < L {
            rows = columns
        }
        
        var matrix = Array(repeating: Array(repeating: "", count: columns), count: rows)
        
        var index = 0
        for i in 0..<rows {
            for j in 0..<columns {
                if index < s.count {
                    matrix[i][j] = String(s[index])
                    index += 1
                }
            }
        }
        
        var result = ""
        for j in 0..<columns {
            for i in 0..<rows {
                result += String(matrix[i][j])
            }
            result += " "
        }

        return String(result.dropLast())
    }
    
}
