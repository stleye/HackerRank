//
//  CheckPalindrome.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 04/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-1/s5PbmwxfECC52PWyQ

struct CheckPalindrome {
    
    func solve() {
        print(solution(inputString: "aa"))
        print(solution(inputString: "ab"))
        print(solution(inputString: "aba"))
        print(solution(inputString: "abca"))
    }

    func solution(inputString: String) -> Bool {
        if inputString.count == 1 { return true }
        let n = inputString.count
        for i in 0..<n / 2 {
            if inputString[i] != inputString[n-i-1] {
                return false
            }
        }
        return true
    }

}
