//
//  JumpingOnTheClouds.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 12/03/2024.
//

import Foundation

struct JumpingOnTheClouds {
    
    func solve() {
        print(jumpingOnClouds(c: [0, 1, 0, 0, 0, 1, 0]))
        print(jumpingOnClouds(c: [0, 0, 1, 0, 0, 1, 0]))
    }
    
    func jumpingOnClouds(c: [Int]) -> Int {
        return jumpingOnClouds(startAt: 0, c: c)
    }
    
    func jumpingOnClouds(startAt start: Int, c: [Int]) -> Int {
        if start+1 == c.count { return 0 }
        if start+2 == c.count { return 1 }
        if start+3 == c.count { return 1 }
        if c[start+1] == 0 && c[start+2] == 0 {
            let s1 = jumpingOnClouds(startAt: start+1, c: c)
            let s2 = jumpingOnClouds(startAt: start+2, c: c)
            return 1 + min(s1, s2)
        } else if c[start+1] == 0 {
            let s1 = jumpingOnClouds(startAt: start+1, c: c)
            return 1+s1
        } else {
            let s2 = jumpingOnClouds(startAt: start+2, c: c)
            return 1+s2
        }
    }

}
