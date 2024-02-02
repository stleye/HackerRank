//
//  BalancedBrackets.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 02/02/2024.
//

import Foundation

struct BalancedBrackets {
    
    func solve() {
        print(isBalanced(s: "{{[[(())]]}}"))
    }
    
    func isBalanced(s: String) -> String {
        var stack = Stack<Character>()
        
        for char in s {
            if char.isOpeningBracket() {
                stack.push(char)
            } else {
                if let front = stack.front(), char.isClosingBracket(of: front) {
                    stack.pop()
                } else {
                    return "NO"
                }
            }
        }
        return stack.isEmpty ? "YES" : "NO"
    }

}

extension Character {
    
    func isOpeningBracket() -> Bool {
        return ["{", "[", "("].contains(self)
    }
    
    func isClosingBracket(of char: Character) -> Bool {
        if char == "{" {
            return self == "}"
        } else if char == "[" {
            return self == "]"
        } else if char == "(" {
            return self == ")"
        }
        return false
    }
    
}
