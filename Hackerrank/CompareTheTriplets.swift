//
//  CompareTheTriplets.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 24/01/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/compare-the-triplets/problem

struct CompareTheTriplets {
    
    func solve() {
        print(compareTriplets(a: [5, 6, 7], b: [3, 6, 10]))
    }
    
    func compareTriplets(a: [Int], b: [Int]) -> [Int] {
        var alice = 0
        var bob = 0

        for i in 0..<3 {
            if a[i] > b[i] {
                alice += 1
            } else if a[i] < b[i] {
                bob += 1
            }
        }
        return [alice, bob]
        
    }
    
}
