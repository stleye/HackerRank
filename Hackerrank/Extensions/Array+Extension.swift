//
//  Array+Extension.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 31/01/2024.
//

import Foundation

extension Array where Element == Int {
    
    /**
     Calculates the least common multiple (LCM) of the list.
     - Returns:
       The least common multiple of the two given integers.
    **/
    func lcm() -> Int {
        // Function to calculate the LCM of two numbers
        func calculateLCM(_ a: Int, _ b: Int) -> Int {
            guard a != 0 && b != 0 else {
                return 0 // The LCM is not defined if either of the numbers is zero
            }
            return abs(a * b) / [a, b].gdc()
        }

        // Use reduce to apply calculateLCM iteratively on the array
        guard let firstNumber = self.first else {
            return 0 // Return 0 if the array is empty
        }
        return self.dropFirst().reduce(firstNumber, calculateLCM)
    }

    func gdc() -> Int {
        func calculateGCD(_ x: Int, _ y: Int) -> Int {
            var a = x
            var b = y
            while b != 0 {
                let temp = b
                b = a % b
                a = temp
            }
            return a
        }

        // Use reduce to apply calculateGCD iteratively on the array
        guard let firstNumber = self.first else {
            return 0 // Return 0 if the array is empty
        }
        return self.dropFirst().reduce(firstNumber, calculateGCD)
    }

}
