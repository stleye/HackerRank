//
//  FirstDigit.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 02/03/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-8/rRGGbTtwZe2mA8Wov

struct FirstDigit {
    
    func solve() {
        print(solution(inputString: "var_1__Int"))
        print(solution(inputString: "1"))
        print(solution(inputString: "q2q-q"))
        print(solution(inputString: "0ss"))
    }
    
    func solution(inputString: String) -> Character {
        let re = try! NSRegularExpression(pattern: #"\d"#)
        let range = NSRange(inputString.startIndex..<inputString.endIndex, in: inputString)
        let matches = re.matches(in: inputString, options: [], range: range)
        
        let matchRange = Range(matches.first!.range, in: inputString)!
        return String(inputString[matchRange])[0]
    }
    
}
