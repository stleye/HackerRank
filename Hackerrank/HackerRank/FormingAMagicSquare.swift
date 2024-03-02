//
//  FormingAMagicSquare.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 13/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/magic-square-forming/problem

struct FormingAMagicSquare {
    
    func solve() {
        print(formingMagicSquare(s: [[4, 8, 2], [4, 5, 7], [6, 1, 6]]))
    }
    
    func formingMagicSquare(s: [[Int]]) -> Int {
        let allMagicSquares =
            [[
                [8, 1, 6],
                [3, 5, 7],
                [4, 9, 2]],
             [
                [4, 3, 8],
                [9, 5, 1],
                [2, 7, 6]],
             [
                [2, 9, 4],
                [7, 5, 3],
                [6, 1, 8]],
             [
                [6, 7, 2],
                [1, 5, 9],
                [8, 3, 4]],
             [
                [6, 1, 8],
                [7, 5, 3],
                [2, 9, 4]],
             [
                [8, 3, 4],
                [1, 5, 9],
                [6, 7, 2]],
             [
                [4, 9, 2],
                [3, 5, 7],
                [8, 1, 6]],
             [
                [2, 7, 6],
                [9, 5, 1],
                [4, 3, 8]]]

        var min = Int.max
        for magicSquare in allMagicSquares {
            let costFromSToMagicSquare = cost(from: s, to: magicSquare)
            if costFromSToMagicSquare < min {
                min = costFromSToMagicSquare
            }
        }
        return min
    }
    
    func cost(from m1: [[Int]], to m2: [[Int]]) -> Int {
        var cost = 0
        for i in 0..<3 {
            for j in 0..<3 {
                cost += abs(m1[i][j] - m2[i][j])
            }
        }
        return cost
    }

}
