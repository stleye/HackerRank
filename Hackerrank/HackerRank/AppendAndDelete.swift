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
//        let commonPrefix = s.commonPrefix(with: t)
//        let tSuffix = t.suffix(<#T##maxLength: Int##Int#>)
//        
//        let neededOperations = s.count + t.count - 2 * commonPrefix.count
//        let remainederOperations = k - neededOperations
//        if remainederOperations == 0 {
//            return "YES"
//        }
//        if remainederOperations > 0 {
//            if remainederOperations >= 2 {
//                let suffix = s.count - commonPrefix.count
//                if s.count - suffix - t.count
//                return "YES"
//            } else if remainederOperations == 1 {
//                return "NO"
//            }
//        }
        return "NO"
        
    }
    
}
