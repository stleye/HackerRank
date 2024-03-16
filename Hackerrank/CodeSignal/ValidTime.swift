//
//  ValidTime.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 16/03/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-12/ywMyCTspqGXPWRZx5

struct ValidTime {
    
    func solve() {
        print(solution(time: "13:58"))
        print(solution(time: "25:51"))
        print(solution(time: "02:76"))
    }
    
    func solution(time: String) -> Bool {
        let t = time.split(separator: ":")
        guard let hh = Int(t[0]), let mm = Int(t[1]) else { return false }
        return 0 <= hh && hh < 24 && 0 < mm && mm < 60
    }

    
}
