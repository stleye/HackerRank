//
//  RegexProblem.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 11/02/2024.
//

import Foundation

protocol RegexProblem {
    var regex: String { get }
    func solve(input: String) -> Bool
}

extension RegexProblem {

    func solve(input: String) -> Bool {
        return NSRegularExpression(regex).matches(input)
    }

}
