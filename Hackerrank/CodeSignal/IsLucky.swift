//
//  IsLucky.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 10/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-3/3AdBC97QNuhF6RwsQ

struct IsLucky {
    
    func solve() {
        print(solution(n: 1230))
        print(solution(n: 239017))
    }
    
    func solution(n: Int) -> Bool {
        let strN = Array(String(n))
        let size = strN.count
        let n1 = strN[0..<size/2].reduce(0) { $0 + Int($1)! }
        let n2 = strN[size/2..<size].reduce(0) { $0 + Int($1)! }

        return n1 == n2
    }

    
}
