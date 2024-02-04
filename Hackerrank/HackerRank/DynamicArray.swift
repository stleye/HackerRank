//
//  DynamicArray.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 25/01/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/dynamic-array/problem

struct DynamicArray {
    
    func solve() {
        print(dynamicArray(n: 2, queries: [[1, 0, 5], [1, 1, 7], [1, 0, 3], [2, 1, 0], [2, 1, 1]]))
    }
    
    func dynamicArray(n: Int, queries: [[Int]]) -> [Int] {
        var arr: [[Int]] = Array(repeating: [], count: n)
        var lastAnswer = 0
        var result: [Int] = []
        
        for i in 0..<queries.count {
            let queryType = queries[i][0]
            let x = queries[i][1]
            let y = queries[i][2]

            let idx = ((x ^ lastAnswer) % n)

            if queryType == 1 {
                arr[idx].append(y)
            } else if queryType == 2 {
                lastAnswer = arr[idx][y % arr[idx].count]
                result.append(lastAnswer)
            }
        }
        
        return result

    }
    
}
