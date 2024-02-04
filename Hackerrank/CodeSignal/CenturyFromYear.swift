//
//  CenturyFromYear.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 04/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-1/egbueTZRRL5Mm4TXN

struct CenturyFromYear {
    
    func solve() {
        print(solution(year: 1))
        print(solution(year: 2))
        print(solution(year: 100))
        print(solution(year: 2024))
    }
    
    func solution(year: Int) -> Int {
        if year % 100 == 0 { return year/100}
        return year/100 + 1
    }

}
