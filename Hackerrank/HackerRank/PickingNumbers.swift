//
//  PickingNumbers.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 12/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/picking-numbers/problem

struct PickingNumbers {

    func solve() {
        //print(pickingNumbers(a: [1, 1, 2, 2, 4, 4, 5, 5, 5]))
        //print(pickingNumbers(a: [4, 6, 5, 3, 3, 1]))
        let numbersArray = [4, 2, 3, 4, 4, 9, 98, 98, 3, 3, 3, 4, 2, 98, 1, 98, 98, 1, 1, 4, 98, 2, 98, 3, 9, 9, 3, 1, 4, 1, 98, 9, 9, 2, 9, 4, 2, 2, 9, 98, 4, 98, 1, 3, 4, 9, 1, 98, 98, 4, 2, 3, 98, 98, 1, 99, 9, 98, 98, 3, 98, 98, 4, 98, 2, 98, 4, 2, 1, 1, 9, 2, 4]
        print(pickingNumbers(a: numbersArray))
    }

    func pickingNumbers(a: [Int]) -> Int {
        var max = Int.min
        for i in 0..<a.count {
            var res = a[i...].filter { abs($0-a[i]) <= 1 && a[i] <= $0 }.count
            if res > max { max = res }
            res = a[i...].filter { abs($0-a[i]) <= 1 && a[i] >= $0 }.count
            if res > max { max = res }
        }
        return max
    }

}
