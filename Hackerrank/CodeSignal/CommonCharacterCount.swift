//
//  CommonCharacterCount.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 10/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-3/JKKuHJknZNj4YGL32

struct CommonCharacterCount {
    
    func solve() {
        print(solution(s1: "aabcc", s2: "adcaa"))
    }
    
    func solution(s1: String, s2: String) -> Int {
        var dict = [Character: Int]()
        var res = 0
        for c in s1 {
            dict[c] = (dict[c] ?? 0) + 1
        }
        for c in s2 {
            if dict[c] != nil {
                res += 1
                dict[c] = dict[c]! - 1
                if dict[c] == 0 {
                    dict.removeValue(forKey: c)
                }
            }
        }
        return res
    }

    
}
