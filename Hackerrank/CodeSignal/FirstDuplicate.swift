//
//  DuplicatedNumbers.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 04/02/2024.
//

import Foundation

//https://app.codesignal.com/interview-practice/question/pMvymcahZ8dY4g75q/description

struct FirstDuplicate {
    
    func solve() {
        print(solution(a: [2, 1, 3, 5, 3, 2]))
    }

    func solution(a: [Int]) -> Int {
        var dict = [Int: Int]()
        
        for i in 0..<a.count {
            let elem = a[i]
            if dict[elem] != nil {
                return elem
            } else {
                dict[elem] = 1
            }
        }
        return -1
        
    }

}
