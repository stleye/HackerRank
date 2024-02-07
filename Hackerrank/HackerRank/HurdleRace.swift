//
//  HurdleRace.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 06/02/2024.
//

import Foundation

struct HurdleRace {
    
    func solve() {
        print(hurdleRace(k: 4, height: [1, 6, 3, 5, 2]))
    }
    
    func hurdleRace(k: Int, height: [Int]) -> Int {
        return max(0, height.max()! - k)
    }
    
}
