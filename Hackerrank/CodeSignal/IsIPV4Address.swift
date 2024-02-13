//
//  IsIPV4Address.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 13/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-5/veW5xJednTy4qcjso

struct IsIPV4Address {
    
    func solve() {
        print(solution(inputString: "192.168.1.1"))
        print(solution(inputString: "192.168.1.3"))
        print(solution(inputString: "172.316.254.1"))
        print(solution(inputString: "172.218.254.00"))
        print(solution(inputString: "172.218.254.0"))
        print(solution(inputString: "0..1.0.0"))
    }

    func solution(inputString: String) -> Bool {
        let split = inputString.split(separator: ".", omittingEmptySubsequences: false)
        if split.count != 4 { return false }
        for component in split {
            if let c = Int(component) {
                if c > 255 || c < 0 { return false }
                if c < 10 && component.count > 1 { return false }
            } else {
                return false
            }
            
        }
        return true
    }
    
}
