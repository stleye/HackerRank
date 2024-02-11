//
//  DayOfTheProgrammer.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 11/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/day-of-the-programmer/problem

struct DayOfTheProgrammer {
    
    func solve() {
        print(dayOfProgrammer(year: 2017))
        print(dayOfProgrammer(year: 2016))
        print(dayOfProgrammer(year: 1800))
        print(dayOfProgrammer(year: 1918))
        print(dayOfProgrammer(year: 1917))
    }
    
    func dayOfProgrammer(year: Int) -> String {
        if year <= 1917 {
            if year % 4 == 0 {
                return "12.09.\(year)"
            } else {
                return "13.09.\(year)"
            }
        } else if year == 1918 {
            return "26.09.1918"
        } else {
            if year % 400 == 0 || (year % 4 == 0 && year % 100 != 0) {
                return "12.09.\(year)"
            } else {
                return "13.09.\(year)"
            }
        }
    }

}
