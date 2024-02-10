//
//  MakeArrayConsecutive2.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 10/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-2/bq2XnSr5kbHqpHGJC

struct MakeArrayConsecutive2 {
    
    func solve() {
        print(solution(statues: [6, 2, 3, 8]))
    }
    
    func solution(statues: [Int]) -> Int {
        var min = Int.max
        var max = Int.min
        var dict = [Int: Int]()
        
        for statue in statues {
            if statue < min { min = statue }
            if statue > max { max = statue }
            dict[statue] = 1
        }
        
        var res = 0
        for i in min...max {
            if dict[i] == nil {
                res += 1
            }
        }
        return res
    }
    
}
