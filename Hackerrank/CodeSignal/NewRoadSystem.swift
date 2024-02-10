//
//  NewRoadSystem.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 10/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/graphs-arcade/kingdom-roads/nCMisf4ZKpDLdHevE

struct NewRoadSystem {

    func solve() {
//        let roadRegister = [[false, true,  false, false],
//                            [false, false, true,  false],
//                            [true,  false, false, true ],
//                            [false, false, true,  false]]
//        let roadRegister = [[false, true,  false, false, false, false, false],
//                            [true,  false, false, false, false, false, false],
//                            [false, false, false, true,  false, false, false],
//                            [false, false, true,  false, false, false, false],
//                            [false, false, false, false, false, false, true ],
//                            [false, false, false, false, true,  false, false],
//                            [false, false, false, false, false, true,  false]]
        let roadRegister = [[false, true,  false],
                            [false, false, false],
                            [true,  false, false]]
        print(solution(roadRegister: roadRegister))
    }

    func solution(roadRegister: [[Bool]]) -> Bool {
        let n = roadRegister.count
        
        for i in 0..<n {
            if inputs(i, roadRegister) != outputs(i, roadRegister) {
                return false
            }
        }

        return true
    }

    func inputs(_ i: Int, _ roadRegister: [[Bool]]) -> Int {
        let n = roadRegister.count
        var sum = 0
        for j in 0..<n  {
            if roadRegister[j][i] {
                sum += 1
            }
        }
        return sum
    }

    func outputs(_ i: Int, _ roadRegister: [[Bool]]) -> Int {
        let n = roadRegister.count
        var sum = 0
        for j in 0..<n  {
            if roadRegister[i][j] {
                sum += 1
            }
        }
        return sum
    }

}
