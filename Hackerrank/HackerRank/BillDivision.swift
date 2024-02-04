//
//  BillDivision.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 03/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/bon-appetit/problem

struct BillDivision {
    
    func solve() {
        bonAppetit(bill: [3, 10, 2, 9], k: 1, b: 7)
    }

    func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
        let sum = bill.reduce(0, +)
        let annasAmount = Double(sum - bill[k]) / 2
        if Double(b) == annasAmount {
            print("Bon Appetit")
        } else {
            print(b - Int(annasAmount))
        }
    }

}
