//
//  PalindromeIndex.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 20/01/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/palindrome-index/problem

struct PalindromeIndex {
    
    func solve() {
        print(palindromeIndex(s: "baa"))

    }
    
    func palindromeIndex(s: String) -> Int {
        if s.count == 1 { return -1 }

        var left = 0
        var right = s.count-1
        
        while left < right {
            if s[left] != s[right] {
                if s.isPalindrome(left: left, right: right-1) {
                    return right
                } else if s.isPalindrome(left: left+1, right: right) {
                    return left
                } else {
                    return -1
                }
            }
            left += 1
            right -= 1
        }
        return -1
    }
    
}
