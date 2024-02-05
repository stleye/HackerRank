//
//  MockTest.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 05/02/2024.
//

import Foundation

struct Pairs {
    
    func solve() {
        print(pairs(k: 1, arr: [1, 2, 3, 4]))
    }
    
    func pairs(k: Int, arr: [Int]) -> Int {
        var dict = [Int: Int]()
        for elem in arr {
            dict[elem] = 1
        }
        var res = 0
        for elem in arr {
            if dict[(k + elem)] != nil {
                res += 1
            }
        }
        return res
    }
    
}
