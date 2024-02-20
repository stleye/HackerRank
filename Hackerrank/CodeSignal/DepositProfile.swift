//
//  DepositProfile.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 20/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-7/8PxjMSncp9ApA4DAb

struct DepositProfile {
    
    func solve() {
        print(solution(deposit: 100, rate: 20, threshold: 170))
    }
    
    func solution(deposit: Int, rate: Int, threshold: Int) -> Int {
        var count = 0
        var sum = Double(deposit)
        let ratePercentage = 1 + Double(rate)/100.0
        while sum < Double(threshold) {
            count += 1
            sum *= ratePercentage
        }
        return count
    }
    
}
