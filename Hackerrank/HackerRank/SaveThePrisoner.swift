//
//  SaveThePrisoner.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 13/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/save-the-prisoner/problem

struct SaveThePrisoner {
    
    func solve() {
        print(saveThePrisoner(n: 5, m: 2, s: 2))
        print(saveThePrisoner(n: 5, m: 2, s: 3))
        print(saveThePrisoner(n: 5, m: 2, s: 4))
        print(saveThePrisoner(n: 5, m: 2, s: 5))
        print(saveThePrisoner(n: 5, m: 2, s: 6))
        print(saveThePrisoner(n: 5, m: 2, s: 7))
        print(saveThePrisoner(n: 5, m: 2, s: 8))
        print(saveThePrisoner(n: 5, m: 2, s: 9))
        print(saveThePrisoner(n: 5, m: 2, s: 10))
    }

    func saveThePrisoner(n: Int, m: Int, s: Int) -> Int {
        let p = (m - 1 + s) % n
        return p == 0 ? n : p
    }

}
