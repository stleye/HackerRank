//
//  DeleteDigit.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 14/03/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-11/vpfeqDwGZSzYNm2uX

struct DeleteDigit {
    
    func solve() {
        print(solution(n: 152))
    }
    
    func solution(n: Int) -> Int {
        let str = String(n)
        var max = Int.min
        for i in 0..<str.count {
            var arr = Array(str)
            arr.remove(at: i)
            let number = Int(String(arr))!
            if number > max {
                max = number
            }
        }
        return max
    }
    
}
