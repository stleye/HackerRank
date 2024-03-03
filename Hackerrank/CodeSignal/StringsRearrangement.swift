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
        print(solution(inputArray: ["aba", "bbb", "bab"]))
        print(solution(inputArray: ["ab", "bb", "aa"]))
        print(solution(inputArray: ["abc", "abx", "axx", "abx", "abc"]))
    }
    
    
    func solution(inputArray: [String]) -> Bool {
        var p = permutations(of: inputArray)
        
        for permutation in p {
            if isSolution(permutation) {
                return true
            }
        }
        return false
    }
    
    func permutations<T>(of array: [T], _ startIndex: Int = 0, _ endIndex: Int? = nil) -> [[T]] {
        var result = [[T]]()

        let endIndex = endIndex ?? array.count - 1

        if startIndex == endIndex {
            result.append(array)
        } else {
            for i in startIndex...endIndex {
                var newArray = array
                newArray.swapAt(startIndex, i)
                result.append(contentsOf: permutations(of: newArray, startIndex + 1, endIndex))
            }
        }

        return result
    }
    
    func isSolution(_ permutation: [String]) -> Bool {
        for i in 0..<permutation.count-1 {
            if !differsOnlyInOneLetter(permutation[i], permutation[i+1]) {
                return false
            }
        }
        return true
    }
    
    func differsOnlyInOneLetter(_ str1: String, _ str2: String) -> Bool {
        var count = 0
        for i in 0..<str1.count {
            if str1[i] != str2[i] {
                count += 1
                if count > 1 { return false }
            }
        }
        return count == 1
    }
    
}
