//
//  DifferentSymbolsNaive.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 02/03/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-8/8N7p3MqzGQg5vFJfZ

struct DifferentSymbolsNaive {
    
    func solve() {
        print(solution(s: "cabca"))
    }
    
    func solution(s: String) -> Int {
        return Set(s).count
    }
    
}
