//
//  GradingStudents.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 25/01/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/grading/problem

struct GradingStudents {

    func solve() {
        print(gradingStudents(grades: [73, 67, 38, 33]))
    }

    func gradingStudents(grades: [Int]) -> [Int] {
        var result: [Int] = []
        for grade in grades {
            if grade < 38 {
                result.append(grade)
            } else {
                let rest = 5 - (grade % 5)
                if rest < 3 {
                    result.append(grade + rest)
                } else {
                    result.append(grade)
                }
            }
        }
        return result
    }

}
