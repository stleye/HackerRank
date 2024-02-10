//
//  RoadsBuilding.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 10/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/graphs-arcade/kingdom-roads/CSzczQWdnYwmyEjvv

struct RoadsBuilding {
    
    func solve() {
        let roads = [[0, 1], [1, 2], [2, 0]]
        print(solution(cities: 4, roads: [[0, 1], [1, 2], [2, 0]]))
    }
    
    func solution(cities: Int, roads: [[Int]]) -> [[Int]] {
        var graph = Array(repeating: Array(repeating: false, count: cities), count: cities)
        var result = [[Int]]()
        for road in roads {
            graph[road[0]][road[1]] = true
            graph[road[1]][road[0]] = true
        }
        for i in 0..<cities-1 {
            for j in i+1..<cities {
                if graph[i][j] == false {
                    result.append([i, j])
                }
            }
        }
        return result
    }

}
