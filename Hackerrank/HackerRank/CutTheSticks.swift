//
//  CutTheSticks.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 08/02/2024.
//

import Foundation

struct CutTheSticks {
    
    func solve() {
        //print(cutTheSticks(arr: [8, 8, 14, 10, 3, 5, 14, 12]))
        print(cutTheSticks(arr: [5, 4, 4, 2, 2, 8]))
    }
    
    func cutTheSticks(arr: [Int]) -> [Int] {
        
        let arr = arr.sorted()
        var t = arr.count
        var res = [arr.count]
        var i = 0
        
        while i < arr.count - 1 {
            var c = 1
 
            while i+1 < arr.count && arr[i] == arr[i+1] {
                i += 1
                c += 1
            }
            i += 1
            if t-c != 0 {
                res.append(t - c)
            }
            t -= c
        }

        return res
        
    }

    
}
