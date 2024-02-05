//
//  CountingValleys.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 04/02/2024.
//

import Foundation

struct CountingValleys {
    
    func solve() {
        print(countingValleys(steps: 8, path: "UDDDUDUU"))
    }
    
    func countingValleys(steps: Int, path: String) -> Int {
        var currentLevel = 0
        var levelOneStepBefore = 0
        var valleys = 0
        for step in path {
            levelOneStepBefore = currentLevel
            currentLevel += (step == "U" ? 1 : -1)
            if currentLevel < 0 && levelOneStepBefore >= 0 {
                valleys += 1
            }
        }
        return valleys
    }
    
}
