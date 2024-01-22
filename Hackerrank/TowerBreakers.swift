//
//  TowerBreakers.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 20/01/2024.
//

import Foundation

struct TowerBreakers {

    func solve() {
        print(self.towerBreakers(n: 2, m: 6))
    }

    func towerBreakers(n: Int, m: Int) -> Int {
        if m == 1 { return 2 }
        if n == 1  { return 1 }
        if n % 2 == 0 { return 2 }
        return 1
    }

}
