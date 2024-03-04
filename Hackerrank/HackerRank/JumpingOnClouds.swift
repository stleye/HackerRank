//
//  JumpingOnClouds.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 15/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/jumping-on-the-clouds-revisited

struct JumpingOnClouds {
    
    func solve() {
        print(jumpingOnClouds(c: [1, 1, 1, 0, 1, 1, 0, 0, 0, 0], k: 3))
    }

    func jumpingOnClouds(c: [Int], k: Int) -> Int {
        var energy = 100
        var currentCloud = 0
        let n = c.count
        repeat {
            energy -= 1
            if c[currentCloud] == 1 {
                energy -= 2
            }
            currentCloud = (currentCloud + k) % n
        } while (currentCloud % n) != 0

        return energy
    }

}
