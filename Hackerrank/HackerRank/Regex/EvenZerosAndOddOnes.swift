//
//  EvenZerosAndOddOnes.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 27/02/2024.
//

import Foundation

struct EvenZerosAndOddOnes: RegexProblem {
    
    var regex: String {
        #"^(((1(11)*0)(1(00)*1)*((1(00)*01)|0))|(0(00)*1(1(00)*1)*((1(00)*01)|0))|((0(00)*01)|1))(((((10(00)*1)|0)(1(00)*1)*((1(00)*01)|0))|(11))*)$"#
    }
    
    func solve() {
        print(solve(input: "1010"))
    }
    
}
