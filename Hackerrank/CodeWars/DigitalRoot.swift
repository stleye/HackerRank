//
//  DigitalRoot.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 10/02/2024.
//

import Foundation

struct DigitalRoot {
    
    func solve() {
        print(digitalRoot(of: 493193))
    }
    
    func digitalRoot(of number: Int) -> Int {
        if number < 10 { return number }
        return digitalRoot(of: (number % 10) + digitalRoot(of: number / 10))
    }

}
