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
        print(appendAndDelete(s: "ashley", t: "ash", k: 2))
    }
    
    func appendAndDelete(s: String, t: String, k: Int) -> String {
        let commonPrefix = s.commonPrefix(with: t)
        return ""
    }
    
}
