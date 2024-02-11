//
//  AlternatingSums.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 11/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-4/cC5QuL9fqvZjXJsW9

struct AlternatingSums {
    
    func solve() {
        print(solution(a: [50, 60, 60, 45, 70]))
    }
    
    func solution(a: [Int]) -> [Int] {
        var team1 = 0
        var team2 = 0
        for i in 0..<a.count {
            if i % 2 == 0 { team1 += a[i] } else { team2 += a[i] }
        }
        return [team1, team2]
    }
    
}
