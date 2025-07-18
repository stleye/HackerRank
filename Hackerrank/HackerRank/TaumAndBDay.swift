//
//  TaumAndBDay.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 18/07/2025.
//

import Foundation

//https://www.hackerrank.com/challenges/taum-and-bday

struct TaumAndBDay {
    
    func solve() {
        print(taumBday(b: 3, w: 5, bc: 3, wc: 4, z: 1))
        print(taumBday(b: 10, w: 10, bc: 1, wc: 1, z: 1))
        print(taumBday(b: 5, w: 9, bc: 2, wc: 3, z: 4))
        print(taumBday(b: 3, w: 6, bc: 9, wc: 1, z: 1))
        print(taumBday(b: 7, w: 7, bc: 4, wc: 2, z: 1))
        print(taumBday(b: 3, w: 3, bc: 1, wc: 9, z: 2))
    }
    
    func taumBday(b: Int, w: Int, bc: Int, wc: Int, z: Int) -> Int {
        let blackCost = min(bc, wc + z) * b
        let whiteCost = min(wc, bc + z) * w
        return blackCost + whiteCost
    }
    
}
