//
//  CatsAndAMouse.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 05/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/cats-and-a-mouse/problem

struct CatsAndAMouse {
    
    func solve() {
        print(catAndMouse(x: 1, y: 2, z: 3))
        print(catAndMouse(x: 1, y: 3, z: 2))
    }
    
    func catAndMouse(x: Int, y: Int, z: Int) -> String {
        let r = abs(z-x) - abs(z-y)
        if r == 0 {
            return "Mouse C"
        } else if r < 0 {
            return "Cat A"
        } else {
            return "Cat B"
        }
    }

}
