//
//  MinimumAbsoluteDifference.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 30/01/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/minimum-absolute-difference-in-an-array/problem

struct MinimumAbsoluteDifference {

    func solve() {
        print(minimumAbsoluteDifference(arr: [1, -3, 71, 68, 17]))
    }

    func minimumAbsoluteDifference(arr: [Int]) -> Int {
        var res = Int.max
        var arr = arr
        arr.sort()
        
        for i in 0..<arr.count - 1 {
            let absolute = abs(arr[i] - arr[i+1])
            if absolute < res {
                res = absolute
            }
        }

        return res
    }

}
