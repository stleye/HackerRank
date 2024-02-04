//
//  DrawingBook.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 04/02/2024.
//

import Foundation

struct DrawingBook {
    
    func solve() {
        print(pageCount(n: 5, p: 3))
    }
    
    func pageCount(n: Int, p: Int) -> Int {
        let group = p / 2
        let numberOfGroups = (n / 2) + 1
        if group <= (numberOfGroups / 2) - 1 {
            return group
        } else {
            return numberOfGroups - group - 1
        }
    }

}
