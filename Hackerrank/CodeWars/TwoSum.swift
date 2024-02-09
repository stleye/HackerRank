//
//  TwoSum.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 09/02/2024.
//

import Foundation

//https://www.codewars.com/kata/52c31f8e6605bcc646000082/train/swift

struct TwoSum {
    
    func solve() {
        print(twosum(numbers: [1, 2, 3], target: 4))
        print(twosum(numbers: [3, 2, 4], target: 6))
        print(twosum(numbers: [1, 54, 24, 35], target: 59))
        print(twosum(numbers: [2, 2, 3], target: 4))
    }

    func twosum(numbers: [Double], target: Double) -> [Int] {
        var dict = [Int: [Int]]()
        for i in 0..<numbers.count {
            let v = Int(numbers[i])
            if dict[v] == nil {
                dict[v] = [i]
            } else {
                dict[v]?.append(i)
            }
        }
        for number in numbers {
            let n1 = Int(number)
            let n2 = Int(target - number)
            let l1 = dict[n1]
            let l2 = dict[n2]
            
            if l1 != nil && l2 != nil {
                for i1 in l1! {
                    for i2 in l2! {
                        if i1 != i2 {
                            return [i1, i2]
                        }
                    }
                }
            }
        }
        return []
    }

}
