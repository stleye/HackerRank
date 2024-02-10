//
//  AllLongestStrings.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 10/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-3/fzsCQGYbxaEcTr2bL

struct AllLongestStrings {
    
    func solve() {
        let inputArray = ["aba", "aa", "ad", "vcd", "aba"]
        print(solution(inputArray: inputArray))
    }
    
    func solution(inputArray: [String]) -> [String] {
        var longest = Int.min
        for str in inputArray {
            if str.count > longest {
                longest = str.count
            }
        }
        var res = [String]()
        for str in inputArray where str.count == longest {
            res.append(str)
        }
        return res
    }
    
}
