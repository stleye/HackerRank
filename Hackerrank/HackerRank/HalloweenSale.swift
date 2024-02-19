//
//  HalloweenSale.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 19/02/2024.
//

import Foundation

struct HalloweenSale {
    
    func solve() {
        print(howManyGames(p: 20, d: 3, m: 6, s: 80))
        print(howManyGames(p: 20, d: 3, m: 6, s: 85))
    }

    func howManyGames(p: Int, d: Int, m: Int, s: Int) -> Int {
        var s = s
        var count = 0
        var i = p
        
        while s >= 0 {
            s -= i
            if s >= 0 {
                count += 1
            }
            i = max(i - d, m)
        }
        return count
    }

}
