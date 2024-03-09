//
//  ElectionsWinners.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 09/03/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-10/8RiRRM3yvbuAd3MNg

struct ElectionsWinners {
    
    func solve() {
        print(solution(votes: [5, 1, 3, 4, 1], k: 0))
        print(solution(votes: [2, 3, 5, 2], k: 3))
    }
    
    func solution(votes: [Int], k: Int) -> Int {
        let max = votes.max()!
        let numberOfMax = votes.filter { $0 == max }.count
        if k == 0 {
            if numberOfMax > 1 { return 0 }
            if numberOfMax == 1 { return 1 }
        }

        var res = 0
        for vote in votes {
            if vote + k > max {
                res += 1
            }
        }
        return res
    }
    
}
