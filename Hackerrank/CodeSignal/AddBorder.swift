//
//  AddBorder.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 11/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-4/ZCD7NQnED724bJtjN

struct AddBorder {
    
    func solve() {
        let picture = ["abc",
                       "ded"]
        print(solution(picture: picture))
    }
    
    func solution(picture: [String]) -> [String] {
        let n = picture[0].count
        var res = [String]()
        res.append(String(repeating: "*", count: n+2))
        for p in picture {
            res.append("*" + p + "*")
        }
        res.append(String(repeating: "*", count: n+2))
        return res
    }

    
}
