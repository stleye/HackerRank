//
//  Taller.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 03/02/2024.
//

import Foundation

struct MigratoryBirds {
    
    func solve() {
        print(migratoryBirds(arr: [1, 4, 4, 4, 5, 3]))
    }
    
    func migratoryBirds(arr: [Int]) -> Int {
        // Write your code here
        var birds = [Int: Int]()
        
        for bird in arr {
            birds[bird] = (birds[bird] ?? 0) + 1
        }
        
        var maxValue = Int.min
        var minKey = Int.max
        for (key, value) in birds {
            if value > maxValue {
                maxValue = value
                minKey = key
            } else if value == maxValue {
                if key < minKey {
                    minKey = key
                    maxValue = value
                }
            }
        }

        return minKey
    }
    
}
