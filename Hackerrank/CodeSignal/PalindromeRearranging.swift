//
//  PalindromeRearranging.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 12/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-4/Xfeo7r9SBSpo3Wico

struct PalindromeRearranging {
    
    func solve() {
        print(solution(inputString: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaabbbcccc"))
    }
    
    func solution(inputString: String) -> Bool {
        var count = [Character: Int]()
        for i in inputString {
            count[i] = (count[i] ?? 0) + 1
        }

        return count.values.filter { $0 % 2 == 1 }.count <= 1
    }
    
}
