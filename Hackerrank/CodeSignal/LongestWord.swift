//
//  LongestWord.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 15/03/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-12/s9qvXv4yTaWg8g4ma

struct LongestWord {
    
    func solve() {
        print(solution(text: "Ready, steady, go!"))
    }
    
    func solution(text inputString: String) -> String {
        let pattern = #"(\b[A-Za-z]+\b)"#
        let regex = try! NSRegularExpression(pattern: pattern)
        
        let matches = regex.matches(in: inputString, range: NSRange(inputString.startIndex..., in: inputString))
        var max = ""
        for match in matches {
            let g1 = String(inputString[Range(match.range(at: 1), in: inputString)!])
            if g1.count > max.count {
                max = g1
            }
        }

        return max
    }

    
}
