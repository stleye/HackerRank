//
//  FirstNotRepeatingCharacter.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 04/02/2024.
//

import Foundation

//https://app.codesignal.com/interview-practice/question/uX5iLwhc6L5ckSyNC/description

struct FirstNotRepeatingCharacter {

    func solve() {
        print(solution(s: "abcdefghijklmnopqrstuvwxyziflskecznslkjfabe"))
    }

    func solution(s: String) -> Character {
        var dict = [Character: Int]()
        
        for char in s {
            dict[char] = (dict[char] ?? 0) + 1
        }
        
        for char in s {
            if dict[char] == 1 { return char }
        }

        return Character("_")

    }
    
}
