//
//  EqualizeTheArray.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 16/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/equality-in-a-array/problem

struct EqualizeTheArray {
    
    func solve() {
        print(equalizeArray(arr: [3, 3, 2, 1, 3]))
        print(equalizeArray(arr: [3, 3, 3, 3, 3]))
        print(equalizeArray(arr: [1, 2, 3, 4, 5]))
    }
    
    func equalizeArray(arr: [Int]) -> Int {
        // Write your code here
        var dict = [Int: Int]()
        var max = Int.min
        for a in arr {
            dict[a] = (dict[a] ?? 0) + 1
            if let d = dict[a], d > max {
                max = d
            }
        }
        return arr.count - max
    }
    
}
