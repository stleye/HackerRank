//
//  CircleOfNumbers.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 19/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-7/vExYvcGnFsEYSt8nQ

struct CircleOfNumbers {

    func solve() {
        print(solution(n: 10, firstNumber: 2))
        print(solution(n: 10, firstNumber: 3))
        print(solution(n: 10, firstNumber: 4))
        print(solution(n: 10, firstNumber: 5))
        print(solution(n: 10, firstNumber: 6))
        print(solution(n: 10, firstNumber: 7))
        print(solution(n: 10, firstNumber: 8))
        print(solution(n: 10, firstNumber: 9))
        print(solution(n: 10, firstNumber: 0))
        print(solution(n: 10, firstNumber: 1))
    }

    func solution(n: Int, firstNumber: Int) -> Int {
        let n_2 = n/2
        return (firstNumber + n_2) % n
    }

}
