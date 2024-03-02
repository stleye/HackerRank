//
//  StringsRearrangement.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 28/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-7/PTWhv2oWqd6p4AHB9

struct StringsRearrangement {
    
    func solve() {
        //print(solution(inputArray: ["aba", "bbb", "bab"]))
        //print(solution(inputArray: ["ab", "bb", "aa"]))
        print(solution(inputArray: ["abc", "abx", "axx", "abx", "abc"]))
    }
    
    func solution(inputArray: [String]) -> Bool {
        var result = [[String]]()

        func permute(head: [String], tail: [String]) {
            if tail.isEmpty {
                result += [head]
            }
            for (i, t) in tail.enumerated() {
                var newTail = tail
                newTail.remove(at: i)
                permute(head: head + [t], tail: newTail)
            }
        }
        permute(head: [], tail: inputArray)

        return result.first { arr in
            zip(arr, arr[1...]).reduce(true) { $0 && zip($1.0, $1.1).filter { $0 != $1 }.count == 1 }
        } != nil
    }


//    func differsOnlyInOneLetter(_ str1: String, _ str2: String) -> Bool {
//        var count = 0
//        for i in 0..<str1.count {
//            if str1[i] != str2[i] {
//                count += 1
//                if count > 1 { return false }
//            }
//        }
//        return count == 1
//    }
    
}
