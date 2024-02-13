//
//  SecurityFunctinos.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 13/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/security-tutorial-functions/problem

struct SecurityFunctions {

    func solve() {
        print(calculate(x: 10))
    }

    func calculate(x: Int) -> Int {
        return x % 11
    }

}
