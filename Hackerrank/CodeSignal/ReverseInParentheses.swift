//
//  ReverseInParentheses.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 10/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-3/9DgaPsE2a7M6M2Hu6

struct ReverseInParentheses {
    
    func solve() {
        print(solution(inputString: "(bar)"))
        print(solution(inputString: "foo(bar)baz"))
        print(solution(inputString: "foo(bar(baz))blim"))
    }

    func solution(inputString: String) -> String {
        if inputString.firstIndex(of: "(") == nil { return inputString }
        
        var res = inputString
        let pattern = #"\([^()]*\)"#
        let regex = try! NSRegularExpression(pattern: pattern)
        let matches = regex.matches(in: inputString, range: NSRange(inputString.startIndex..., in: inputString))
        
        for match in matches {
            let matchRange = Range(match.range, in: inputString)!
            let expression = String(inputString[matchRange])
            let reversedExpression = String(expression.replacingOccurrences(of: "(", with: "").replacingOccurrences(of: ")", with: "").reversed())
            res = res.replacingOccurrences(of: expression, with: reversedExpression)
        }
        
        return solution(inputString: res)
    }
    
}
