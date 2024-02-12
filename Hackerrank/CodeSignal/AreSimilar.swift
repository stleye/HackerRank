//
//  AreSimilar.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 12/02/2024.
//

import Foundation


//https://app.codesignal.com/arcade/intro/level-4/xYXfzQmnhBvEKJwXP

struct AreSimilar {
    
    func solve() {
        print(solution(a: [1, 2, 1, 2, 2, 1], b: [2, 2, 1, 1, 2, 1]))
        print(solution(a: [1, 2, 3], b: [1, 2, 3]))
        print(solution(a: [1, 2, 3], b: [2, 1, 3]))
        print(solution(a: [1, 2, 2], b: [2, 1, 1]))
        print(solution(a: [1, 2, 2, 1, 1, 1, 2, 2, 1, 1, 2, 2, 1, 1, 2, 2, 3], b: [3, 1, 2, 2, 1, 1, 1, 2, 2, 1, 1, 2, 2, 1, 1, 2, 1]))
    }
    
    func solution(a: [Int], b: [Int]) -> Bool {
        var diff = [Int]()
        for i in 0..<a.count {
            if a[i] != b[i] {
                diff.append(i)
            }
        }
        if diff.count > 2 || diff.count == 1 { return false }
        if diff.count == 0 { return true }
        var a = a
        a.swapAt(diff[0], diff[1])
        return a == b
    }
    
}
