//
//  IsBeautifulString.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 07/03/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-10/PHSQhLEw3K2CmhhXE

struct IsBeautifulString {
    
    func solve() {
        print(solution(inputString: "bbbaacdafe"))
        print(solution(inputString: "aabbb"))
        print(solution(inputString: "bbc"))
    }
    
    func solution(inputString: String) -> Bool {
        var inputStringDictionary = [Character: Int]()
        var alphabetDictionary = [Character: Int]()
        let alphabet = "abcdefghijklmnopqrstuvwxyz"
        
        for (index, letter) in alphabet.enumerated() {
            alphabetDictionary[letter] = index
        }

        for letter in inputString {
            inputStringDictionary[letter] = (inputStringDictionary[letter] ?? 0) + 1
        }
        
        for letter in inputString {
            let index = alphabetDictionary[letter]!
            if index == 0 { continue }
            let previouLetter = alphabet[index-1]
            if let previousLetterCount = inputStringDictionary[previouLetter] {
                if previousLetterCount < inputStringDictionary[letter]! {
                    return false
                }
            } else {
                return false
            }
        }
        return true
    }
    
}
