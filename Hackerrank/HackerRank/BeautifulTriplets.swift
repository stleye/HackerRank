//
//  BeautifulTriplets.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 16/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/beautiful-triplets/problem

struct BeautifulTriplets {

    func solve() {
        print(beautifulTriplets(d: 1, arr: [2, 2, 3, 4, 5]))
    }

    func beautifulTriplets(d: Int, arr: [Int]) -> Int {
        var dict = [Int: [Int]]()
        for i in 0..<arr.count {
            let e = arr[i]
            if var indices = dict[e] {
                indices.append(i)
                dict[e] = indices
            } else {
                dict[e] = [i]
            }
        }
        var sum = 0
        for e in arr {
            guard let i = dict[e] else { continue }
            guard let j = dict[e+d] else { continue }
            guard let k = dict[e+d+d] else { continue }
            sum += 1
        }
        return sum
    }

}
