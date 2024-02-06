//
//  MaximizingXOR.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 06/02/2024.
//

import Foundation

struct MaximizingXOR {
    
    func solve() {
        print(maximizingXor(l: 10, r: 15))
    }
    
    func maximizingXor(l: Int, r: Int) -> Int {
        // Write your code here
        var max = Int.min
        for a in l...r {
            for b in a...r {
                if a^b > max {
                    max = a^b
                }
            }
        }
        return max
    }
    
}
