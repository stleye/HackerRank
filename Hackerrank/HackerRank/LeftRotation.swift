//
//  LeftRotation.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 25/01/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/array-left-rotation/problem

struct LeftRotation {
    
    func solve() {
        print(rotateLeft(d: 10, arr: [1, 2, 3, 4, 5]))
    }
    
    func rotateLeft(d: Int, arr: [Int]) -> [Int] {
        if arr.count == 1 { return arr }
        var result: [Int] = []
        
        for i in 0..<arr.count {
            let rotatedIndex = (i + d) % arr.count
            result.append(arr[rotatedIndex])
        }
        
        return result
        
    }
    
}
