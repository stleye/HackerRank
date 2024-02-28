//
//  FindASubWord.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 28/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/detect-the-email-addresses/problem

struct DetectEmailAddresses {
    
    var regex: String {
        #"[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}"#
    }

    func solve() {
        print(solve(input: ""))
    }

    func solve(input: String) -> Set<String> {
        let re = try! NSRegularExpression(pattern: regex)
        let range = NSRange(input.startIndex..<input.endIndex, in: input)
        let matches = re.matches(in: input, options: [], range: range)

        var emails = Set<String>()
        
        for match in matches {
            let matchRange = Range(match.range, in: input)!
            let expression = String(input[matchRange])
            emails.insert(expression)
        }
        
        return emails
    }
    
    func parseInput() {
        let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
        FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
        let fileHandle = FileHandle(forWritingAtPath: stdout)!

        guard let n = Int(readLine() ?? "") else { fatalError("Bad input") }

        var res = Set<String>()

        for _ in 1...n {
            guard let line = readLine() else { fatalError("Bad input") }
            res.formUnion(solve(input: line))
        }

        let resStr = res.sorted().joined(separator: ";")

        if !resStr.isEmpty {
            fileHandle.write(resStr.data(using: .utf8)!)
            fileHandle.write("\n".data(using: .utf8)!)
        }
    }

}
