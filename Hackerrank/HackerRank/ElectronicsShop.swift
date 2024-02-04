//
//  ElectronicsShop.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 30/01/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/electronics-shop/problem

struct ElectronicsShop {

    func solve() {
        getMoneySpent(keyboards: [40, 50, 60], drives: [5, 8, 12], b: 60)
    }

    func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
        var max = -1
        for keyboard in keyboards {
            for drive in drives {
                let sum = keyboard + drive
                if sum <= b && sum > max {
                    max = sum
                }
            }
        }
        return max
    }

}
