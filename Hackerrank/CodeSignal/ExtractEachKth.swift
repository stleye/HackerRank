//
//  ExtractEachKth.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 02/03/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-8/3AgqcKrxbwFhd3Z3R

struct ExtractEachKth {
    
    func solve() {
        print(solution(inputArray: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], k: 3))
    }
    
    func solution(inputArray: [Int], k: Int) -> [Int] {
        var res = [Int]()
        for i in 0..<inputArray.count {
            if (i + 1) % k != 0 {
                res.append(inputArray[i])
            }
        }
        return res
    }

    
}
