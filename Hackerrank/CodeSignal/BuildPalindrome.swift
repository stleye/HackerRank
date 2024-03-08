//
//  BuildPalindrome.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 08/03/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-10/ppZ9zSufpjyzAsSEx

struct BuildPalindrome {
    
    func solve() {
        print(solution(st: "abcd"))
    }
    
    func solution(st: String) -> String {
        if st.isPalindrome() { return st }
        let firstLetter = String(st[0])
        return firstLetter + solution(st: st[1..<st.count]) + firstLetter
    }

}
