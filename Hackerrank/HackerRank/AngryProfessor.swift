//
//  AngryProfessor.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 07/02/2024.
//

import Foundation

struct AngryProfessor {
    
    func solve() {
        print(angryProfessor(k: 3, a: [-1, -3, 4, 2]))
        print(angryProfessor(k: 2, a: [0, -1, 2, 1]))
    }
    
    func angryProfessor(k: Int, a: [Int]) -> String {
        return (a.filter {$0 <= 0}.count >= k) ? "NO" : "YES"
    }
    
}
