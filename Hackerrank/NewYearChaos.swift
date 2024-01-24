//
//  NewYearChaos.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 23/01/2024.
//

import Foundation

struct NewYearChaos {
    
    func solve() {
        minimumBribes(q: [1, 2, 5, 4, 3, 6, 7, 8])
    }
    
    func minimumBribes(q: [Int]) -> Void {
        var res = 0
        for i in 0..<q.count {
            if q[i] - 1 - i > 2 {
                print ("Too chaotic")
                return
            } else {
                if (q[i] - 1) > i + 1 {
                    res += 2
                } else if (q[i] - 1) > i {
                    res += 1
                }
            }
        }
        print(res)
    }
    
}
