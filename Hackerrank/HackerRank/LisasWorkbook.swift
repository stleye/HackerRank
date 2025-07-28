//
//  LisasWorkbook.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 27/07/2025.
//

import Foundation

//https://www.hackerrank.com/challenges/lisa-workbook

struct LisasWorkbook {
    
    func solve() {
        print(workbook(n: 5, k: 3, arr: [4, 2, 6, 1, 10]))
    }

    func workbook(n: Int, k: Int, arr: [Int]) -> Int {
        var page = 1
        var interesting = 0
        for chapter in 1...n {
            let problemsInChapter = arr[chapter-1]
            for problem in 1...problemsInChapter {
                if problem == page {
                    interesting += 1
                }
                if problem % k == 0 {
                    if problem != problemsInChapter {
                        page += 1
                    }
                }
            }
            page += 1
        }
        return interesting
    }
    
}
