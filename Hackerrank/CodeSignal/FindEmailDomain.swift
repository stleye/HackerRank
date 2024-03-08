//
//  FindEmailDomain.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 07/03/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-10/TXFLopNcCNbJLQivP

struct FindEmailDomain {
    
    func solve() {
        print(solution(address: "prettyandsimple@example.com"))
        print(solution(address: "fully-qualified-domain@codesignal.com"))
    }
    
    func solution(address inputString: String) -> String {
        let pattern = #"^.*@(.+)"#
        let re = try! NSRegularExpression(pattern: pattern)
        let matches = re.matches(in: inputString, range: NSRange(inputString.startIndex..., in: inputString))
        for match in matches {
            let g1 = String(inputString[Range(match.range(at: 1), in: inputString)!])
            return g1
        }
        return ""
    }

    
}
