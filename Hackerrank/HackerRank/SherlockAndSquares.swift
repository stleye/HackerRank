//
//  SherlockAndSquares.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 15/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/sherlock-and-squares/problem

struct SherlockAndSquares {

    func solve() {
        print(squares(a: 1, b: 100))
    }

    func squares(a: Int, b: Int) -> Int {
        let l = Int(ceil(sqrt(Double(a))))
        let h = Int(sqrt(Double(b)))
        return h - l + 1
    }

}
