//
//  NumberLineJumps.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 30/01/2024.
//

import Foundation

struct NumberLineJumps {
    
    func solve() {
        print(kangaroo(x1: 2, v1: 1, x2: 1, v2: 2))
    }

    func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
        if v1 - v2 == 0 {
            return x1 == x2 ? "YES" : "NO"
        }
        let xIntersection = Double(x2 - x1) / Double(v1 - v2)
        if xIntersection < 0 {
            return "NO"
        }
        return xIntersection.truncatingRemainder(dividingBy: 1) == 0 ? "YES" : "NO"
    }

}
