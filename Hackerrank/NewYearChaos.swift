//
//  NewYearChaos.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 23/01/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/new-year-chaos/problem

struct NewYearChaos {
    
    func solve() {
        minimumBribes(q: [1, 2, 5, 3, 7, 8, 6, 4])
    }
    
    func minimumBribes(q: [Int]) -> Void {
        if q.count == 1 {
            print ("0")
            return
        } else if q.count == 2 {
            print (q[0] < q[1] ? "0" : "1")
            return
        }

        var res = 0

        var p1 = 1
        var p2 = 2
        var p3 = 3

        for i in 0..<q.count {
            if q[i] == p1 {
                p1 = p2
                p2 = p3
                p3 += 1
            } else if q[i] == p2 {
                res += 1
                p2 = p3
                p3 += 1
            } else if q[i] == p3 {
                res += 2
                p3 += 1
            } else {
                print ("Too chaotic")
                return
            }
        }
        print(res)
    }
    
}
