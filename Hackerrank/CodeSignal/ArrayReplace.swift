//
//  ArrayReplace.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 15/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-6/mCkmbxdMsMTjBc3Bm

struct ArrayReplace {
    
    func solve() {
        print(solution(inputArray: [1, 2, 1], elemToReplace: 1, substitutionElem: 3))
    }
    
    func solution(inputArray: [Int], elemToReplace: Int, substitutionElem: Int) -> [Int] {
        return inputArray.map { $0 == elemToReplace ? substitutionElem : $0 }
    }
    
}
