//
//  LongestDigitPrefix.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 04/03/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-9/AACpNbZANCkhHWNs3

struct LongestDigitPrefix {
    
    func solve() {
        print(solution(inputString: "123aa1"))
        print(solution(inputString: "123"))
    }
    
    func solution(inputString: String) -> String {
        let pattern = #"^\d*"#
        let re = try! NSRegularExpression(pattern: pattern)
        let range = NSRange(inputString.startIndex..<inputString.endIndex, in: inputString)
        let matches = re.matches(in: inputString, options: [], range: range)

        let matchRange = Range(matches.first!.range, in: inputString)!
        return String(inputString[matchRange])
    }

    
    
}
