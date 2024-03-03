//
//  ClimbingTheLeaderboard.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 03/03/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/climbing-the-leaderboard/problem

struct ClimbingTheLeaderboard {
    
    func solve() {
        //print(climbingLeaderboard(ranked: [100, 100, 50, 40, 40, 20, 10], player: [5, 25, 50, 120]))
        //print(climbingLeaderboard(ranked: [100, 100, 50, 40, 40, 20, 10], player: [50, 65, 77, 90, 102]))
        print(climbingLeaderboard(ranked: [100, 90, 90, 80, 75, 60], player: [50, 65, 77, 90, 102]))
    }
    
    func climbingLeaderboard(ranked: [Int], player: [Int]) -> [Int] {
        var positions = Array(repeating: 0, count: ranked.count)
        var position = 1
        positions[0] = 1
        var res = [Int]()
        for i in 1..<ranked.count {
            if ranked[i] != ranked[i-1] {
                position += 1
            }
            positions[i] = position
        }
        
        var last = ranked.count - 1
        for (i, score) in player.enumerated() {
            var j = last
            while j >= 0 && score >= ranked[j] {
                j -= 1
            }
            if j < 0 {
                res.append(1)
            } else {
                if j+1 < ranked.count && score == ranked[j+1] {
                    res.append(positions[j+1])
                    last = j+1
                } else {
                    res.append(positions[j]+1)
                    last = j
                }
            }
        }

        return res
    }
    
}
