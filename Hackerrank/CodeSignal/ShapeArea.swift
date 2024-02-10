//
//  ShapeArea.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 10/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-2/yuGuHvcCaFCKk56rJ

struct ShapeArea {
    
    func solve() {
        print(solution(n: 1))
        print(solution(n: 2))
        print(solution(n: 3))
        print(solution(n: 4))
        print(solution(n: 5))
    }
    
    func solution(n: Int) -> Int {
        return n*n + (n-1)*(n-1)
    }
    
}
