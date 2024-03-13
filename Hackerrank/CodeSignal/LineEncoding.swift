//
//  LineEncoding.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 13/03/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-11/o2uq6eTuvk7atGadR

struct LineEncoding {
    
    func solve() {
        print(solution(s: "ccccccccccccccc"))
    }
    
    func solution(s: String) -> String {
        var count = 0
        var res1 = ""
        for i in 0..<s.count-1 {
            count += 1
            if i == s.count - 2 {
                if s[i] == s[i+1] {
                    if count == 0 {
                        res1 += "\(s[i])"
                    } else {
                        res1 += "\(count+1)\(s[i])"
                    }
                } else {
                    if count == 1 {
                        res1 += "\(s[i])"
                        res1 += "\(s[i+1])"
                    } else {
                        res1 += "\(count)\(s[i])"
                        res1 += "\(s[i+1])"
                    }
                }
            } else {
                if s[i] != s[i+1] {
                    if count == 1 {
                        res1 += "\(s[i])"
                    } else {
                        res1 += "\(count)\(s[i])"
                    }
                    count = 0
                }
            }
        }
        return res1
    }

    
}
