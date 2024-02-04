//
//  BirthdayCakeCandles.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 24/01/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/birthday-cake-candles/problem

struct BirthdayCakeCandles {
    
    func solve() {
        print(birthdayCakeCandles(candles: [4, 4, 1, 3]))
    }
    
    func birthdayCakeCandles(candles: [Int]) -> Int {
        
        var total = 0
        var max = candles[0]

        for candle in candles {
            if candle > max {
                max = candle
                total = 1
            } else if candle == max {
                total += 1
            }
        }
        
        return total

    }
    
}
