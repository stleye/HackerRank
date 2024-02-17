//
//  LibraryFines.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 17/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/library-fine/problem

struct LibraryFines {

    func solve() {
        print(libraryFine(d1: 14, m1: 7, y1: 2018, d2: 5, m2: 7, y2: 2018))
        print(libraryFine(d1: 9, m1: 6, y1: 2015, d2: 6, m2: 6, y2: 2015))
        print(libraryFine(d1: 9, m1: 6, y1: 2016, d2: 6, m2: 6, y2: 2015))
        print(libraryFine(d1: 9, m1: 8, y1: 2015, d2: 6, m2: 6, y2: 2015))
        print(libraryFine(d1: 1, m1: 1, y1: 2015, d2: 1, m2: 1, y2: 2015))
    }

    func libraryFine(d1: Int, m1: Int, y1: Int, d2: Int, m2: Int, y2: Int) -> Int {
        if y1 < y2 { return 0 }
        if y1 == y2 {
            if m2 == m1 {
                if d1 <= d2 {
                    return 0
                } else {
                    return 15 * (d1 - d2)
                }
            } else if m1 < m2 {
                return 0
            } else {
                return 500 * (m1 - m2)
            }
        } else {
            return 10000
        }
    }

}
