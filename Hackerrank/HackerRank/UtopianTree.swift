//
//  UtopianTree.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 06/02/2024.
//

import Foundation

struct UtopianTree {
    
    func solve() {
        print(utopianTree(n: 5))
    }
    
    func utopianTree(n: Int) -> Int {
        if n == 0 { return 1 }
        if n%2 == 0 {
            return utopianTree(n: n-1) + 1
        } else {
            return utopianTree(n: n-1) * 2
        }
    }
    
}
