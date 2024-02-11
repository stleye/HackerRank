//
//  SplitThePhoneNumbers.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 11/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/split-number/problem

struct SplitThePhoneNumbers: RegexProblem {

    var regex: String {
        #"([\d]{1,3})[-\s]([\d]{1,3})[-\s]([\d]{4,10})"#
    }

    func solve() {
        print(solve(input: "148-809-2561957985"))
    }

    func solve(input: String) -> String {
        let re = NSRegularExpression(regex)
        let range = NSRange(input.startIndex..<input.endIndex, in: input)
        let matches = re.matches(in: input, options: [], range: range)

        let match = matches.first!
        let countryCode = String(input[Range(match.range(at: 1), in: input)!])
        let localAreaCode = String(input[Range(match.range(at: 2), in: input)!])
        let number = String(input[Range(match.range(at: 3), in: input)!])

        return "CountryCode=\(countryCode),LocalAreaCode=\(localAreaCode),Number=\(number)"
    }
    
    func parseInput() {
        let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
        FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
        let fileHandle = FileHandle(forWritingAtPath: stdout)!

        guard let n = Int(readLine() ?? "") else { fatalError("Bad input") }

        for _ in 1...n {
            guard let phoneNumber = readLine() else { fatalError("Bad input") }
            let res = solve(input: phoneNumber)
            fileHandle.write(res.data(using: .utf8)!)
            fileHandle.write("\n".data(using: .utf8)!)
        }
    }

}
