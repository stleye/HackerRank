//
//  SortByHeight.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 10/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-3/D6qmdBL2NYz49XHwM

struct SortByHeight {
    
    func solve() {
        let a = [-1, 150, 190, 170, -1, -1, 160, 180]
        print(solution(a: a))
    }
    
    func solution(a: [Int]) -> [Int] {
        let r = a.filter { $0 != -1 }.sorted()
        var res = a
        var j = 0
        for i in 0..<res.count {
            if res[i] != -1 {
                res[i] = r[j]
                j += 1
            }
        }
        return res
    }
    
}
