//
//  IsCryptSolution.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 05/02/2024.
//

import Foundation

//https://app.codesignal.com/interview-practice/question/yM4uWYeQTHzYewW9H/description

struct IsCryptSolution {
    
    func solve() {
//        let table = [["O", "0"],
//                    ["M", "1"],
//                    ["Y", "2"],
//                    ["E", "5"],
//                    ["N", "6"],
//                    ["D", "7"],
//                    ["R", "8"],
//                    ["S", "9"]]
//        let table = [["O", "1"],
//                    ["T", "0"],
//                    ["W", "9"],
//                    ["E", "5"],
//                    ["N", "4"]]
//        let newTable = table.map({ p in
//            p.map { r in
//                Character(r)
//            }
//        })
        print(solution(crypt: ["AA", "AA", "AA"], solution: [["A","0"]]))
    }
    
    func solution(crypt: [String], solution: [[Character]]) -> Bool {
        guard let n1 = decode(crypt[0], table: solution) else { return false }
        guard let n2 = decode(crypt[1], table: solution) else { return false }
        guard let  n3 = decode(crypt[2], table: solution) else { return false }
        return n1 + n2 == n3
    }

    private func decode(_ str: String, table: [[Character]]) -> Int? {
        var digits = [Character]()
        for char in str {
            for letter in table {
                if (char == letter[0]) {
                    let digit = letter[1]
                    digits.append(digit)
                    break
                }
            }
        }
        if digits[0] == "0" && digits.count > 1 { return nil }
        return Int(String(digits))
    }

    
}
