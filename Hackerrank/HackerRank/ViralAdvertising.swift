//
//  ViralAdvertising.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 13/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/strange-advertising/problem

struct ViralAdvertising {
    
    func solve() {
        print(viralAdvertising(n: 2))
        print(viralAdvertising(n: 3))
        print(viralAdvertising(n: 4))
        print(viralAdvertising(n: 5))
    }
    
    func viralAdvertising(n: Int) -> Int {
        if n == 1 { return 2 }
        var cumulative = 2
        var liked = 2
        for i in 2...n {
            liked = liked * 3 / 2
            cumulative += liked
        }
        return cumulative
    }
    
}
