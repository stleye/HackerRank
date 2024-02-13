//
//  SecurityBijectiveFunctions.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 13/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/security-bijective-functions/problem

struct SecurityBijectiveFunctions {
    
    func solve() {
        print(isBijective([1, 2, 3, 4, 5, 7, 6, 8]))
        print(isBijective([1, 2, 3, 4, 5, 7, 6, 8].shuffled()))
        print(isBijective([1, 2, 3, 4, 5, 7, 6, 8].shuffled()))
        print(isBijective([1, 2, 3, 4, 5, 7, 6, 8].shuffled()))
        print(isBijective([1, 2, 3, 4, 5, 7, 6, 8].shuffled()))
        print(isBijective([1, 2, 3, 4, 5, 7, 6, 8, 5].shuffled()))
    }
    
    func isBijective(_ function: [Int]) -> String {
        var d = [Int: Int]()
        let n = function.count
        for fx in function {
            d[fx] = 1
        }
        for i in 1...n {
            if d[i] == nil { return "NO" }
        }
        return "YES"
    }

    func parseInput() {
        let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
        FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
        let fileHandle = FileHandle(forWritingAtPath: stdout)!

        guard let n = Int(readLine() ?? "") else { fatalError("Bad input") }
        
        let function = readLine()!.split(separator: " ").map { Int($0)! }
        
        let res = isBijective(function)

        fileHandle.write(res.data(using: .utf8)!)
        fileHandle.write("\n".data(using: .utf8)!)
    }
    
    
}
