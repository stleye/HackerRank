//
//  BoxBlur.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 13/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-5/5xPitc3yT3dqS7XkP

struct BoxBlur {
    
    func solve() {
        let image = [[7, 4, 0, 1],
                     [5, 6, 2, 2],
                     [6, 10, 7, 8]]
        print(solution(image: image))
    }
    
    func solution(image: [[Int]]) -> [[Int]] {
        let r = image.count
        let c = image[0].count
        let sol_r = r - 3 + 1
        let sol_c = c - 3 + 1
        var res = Array(repeating: Array(repeating: 0, count: sol_c), count: sol_r)

        for i in 0..<r-2 {
            for j in 0..<c-2 {
                
                var sum = 0
                for k in i..<i+3 {
                    for l in j..<j+3 {
                        sum += image[k][l]
                    }
                }
                res[i][j] = sum/9
                        
            }
        }

        return res
    }
    
}
