//
//  AlienUsername.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 25/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/alien-username/problem

struct AlienUsername: RegexProblem {
    
    var regex: String {
        #"^[_|\.][0-9]+[a-zA-Z]*_?$"#
    }
    
    func solve() {
        print(solve(inputString: "_0898989811abced_"))
        print(solve(inputString: "_abce"))
        print(solve(inputString: "_09090909abcD0"))
    }

    func solve(inputString: String) -> String {
        return solve(input: inputString) ? "VALID" : "INVALID"
    }

    func parseInput() {
        let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
        FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
        let fileHandle = FileHandle(forWritingAtPath: stdout)!

        guard let n = Int(readLine() ?? "") else { fatalError("Bad input") }

        for _ in 1...n {
            guard let username = readLine() else { fatalError("Bad input") }
            let res = solve(inputString: username)
            if !res.isEmpty {
                fileHandle.write(res.data(using: .utf8)!)
                fileHandle.write("\n".data(using: .utf8)!)
            }
        }
    }

}
