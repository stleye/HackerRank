//
//  CodeSignal.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 04/02/2024.
//

import Foundation

//https://app.codesignal.com/interview-practice/question/5A8jwLGcEpTPyyjTB/description

struct RotateMatrix {
    
    func solve() {
        print(solution(a: [[1, 2, 3], [4, 5, 6], [7, 8, 9]]))
    }

    func solution(a: [[Int]]) -> [[Int]] {
        var a = a
        let n = a.count
        for i in 0..<n {
            for j in i..<n {
                let temp = a[i][j]
                a[i][j] = a[j][i]
                a[j][i] = temp
            }
        }
        for i in 0..<n {
            a[i].reverse()
        }
        return a
    }

}
