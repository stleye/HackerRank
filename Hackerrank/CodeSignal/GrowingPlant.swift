//
//  GrowingPlant.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 03/03/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-9/xHvruDnQCx7mYom3T

struct GrowingPlant {
    
    func solve() {
        print(solution(upSpeed: 100, downSpeed: 10, desiredHeight: 910))
    }
    
    func solution(upSpeed: Int, downSpeed: Int, desiredHeight: Int) -> Int {
        var height = 0
        var n = 1
        while height < desiredHeight {
            height += upSpeed
            if height >= desiredHeight { return n }
            height -= downSpeed
            n += 1
        }
        return n
    }

    
}
