//
//  AlmostIncreasingSequence.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 10/02/2024.
//

import Foundation

struct AlmostIncreasingSequence {
    
    func solve() {
        print(solution(sequence: [1, 3, 2, 1]))
        print(solution(sequence: [1, 3, 2]))
        print(solution(sequence: [1, 2, 3, 4, 5, 6, 7, 8]))
        print(solution(sequence: [1, 2, 3, 4, 5, 6, 7, 8, 6]))
        print(solution(sequence: [1, 2, 3, 4, 5, 6, 7, 8, 6, 5]))
        print(solution(sequence: [1, 2, 1, 2]))
        print(solution(sequence: [1, 2, 3, 4, 3, 6]))
    }
    
    func solution(sequence: [Int]) -> Bool {
        var index: Int?
        for i in 0..<sequence.count - 1 {
            if sequence[i] >= sequence[i+1] {
                if index != nil { return false }
                index = i
            }
        }
        if let index, index-1 >= 0, index+1 < sequence.count {
            if sequence[index-1] < sequence[index+1] { return true }
            if index + 1 == sequence.count - 1 { return true }
            if index + 2 < sequence.count {
                if sequence[index] < sequence[index+2] { return true }
            }
            return false
        }
        return true
    }

}
