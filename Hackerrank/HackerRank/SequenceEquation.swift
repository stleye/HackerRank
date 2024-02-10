//
//  SequenceEquation.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 10/02/2024.
//

import Foundation

struct SequenceEquation {

    func solve() {
        print(permutationEquation(p: [5, 2, 1, 3, 4]))
    }

    func permutationEquation(p: [Int]) -> [Int] {
        var hash = [Int: Int]()
        let n = p.count
        var res = [Int]()
        for i in 0..<n {
            hash[p[i]] = i+1
        }
        for i in 1...n {
            res.append(hash[hash[i]!]!)
        }
        return res
    }

}
