//
//  IsMac48Address.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 11/03/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-10/HJ2thsvjL25iCvvdm

struct IsMac48Address {
    
    func solve() {
        print(solution(inputString: "01-23-45-67-89-AB"))
    }
    
    func solution(inputString: String) -> Bool {
        let pattern = #"^([0-9A-F]{2}-){5}([0-9A-F]{2})$"#
        return NSRegularExpression(pattern).matches(inputString)
    }
    
}
