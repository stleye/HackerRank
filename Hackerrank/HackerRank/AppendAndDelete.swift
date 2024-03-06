//
//  AppendAndDelete.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 27/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/append-and-delete/problem

struct AppendAndDelete {
    
    func solve() {
        print(appendAndDelete(s: "hackerhappy", t: "hackerrank", k: 9))
        print(appendAndDelete(s: "aba", t: "aba", k: 7))
        print(appendAndDelete(s: "ashley", t: "ash", k: 7))
    }
    
    func appendAndDelete(s: String, t: String, k: Int) -> String {
        
        let commonLength = s.commonPrefix(with: t).count
        let totalOperations = s.count + t.count - 2 * commonLength
        
        if k >= s.count + t.count || (k >= totalOperations && (k - totalOperations) % 2 == 0) {
            return "YES"
        }
        return "NO"
    }
    
    
    
}
