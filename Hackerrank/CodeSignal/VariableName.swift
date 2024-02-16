//
//  VariableName.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 16/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-6/6Wv4WsrsMJ8Y2Fwno

struct VariableName {
    
    func solve() {
        print(solution(name: "var_1__Int"))
        print(solution(name: "qq-q"))
        print(solution(name: "2w2"))
        print(solution(name: "_1__Int"))
        print(solution(name: "va[riable0"))
        print(solution(name: "_Aas_23"))
    }

    func solution(name: String) -> Bool {
        let pattern = #"^[_a-zA-Z]+[_\da-zA-Z]*$"#
        let regex = try! NSRegularExpression(pattern: pattern)
        let range = NSRange(name.startIndex..., in: name)
        return regex.firstMatch(in: name, range: range) != nil
    }

    
}
