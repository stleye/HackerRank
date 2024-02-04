//
//  SalesByMatch.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 04/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/sock-merchant/problem

struct SalesByMatch {

    func solve() {
        print(sockMerchant(n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20]))
    }

    func sockMerchant(n: Int, ar: [Int]) -> Int {
        var dict = [Int: Int]()
        
        for i in 0..<n {
            let color = ar[i]
            dict[color] = (dict[color] ?? 0) + 1
        }
        
        var result = 0
        for (_, value) in dict {
            result += value / 2
        }
        return result
    }

}
