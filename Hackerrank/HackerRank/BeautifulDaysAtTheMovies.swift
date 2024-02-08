//
//  BeautifulDaysAtTheMovies.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 08/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/beautiful-days-at-the-movies/problem

struct BeautifulDaysAtTheMovies {
    
    func solve() {
        print(beautifulDays(i: 20, j: 23, k: 6))
    }
    
    func beautifulDays(i: Int, j: Int, k: Int) -> Int {
        var sum = 0

        for s in i...j {
            if abs(s - reverse(s)) % k == 0 {
                sum += 1
            }
        }

        return sum
    }

    func reverse(_ i: Int) -> Int {
        return Int(String(String(i).reversed()))!
    }

}
