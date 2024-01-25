//
//  TimeConversion.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 24/01/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/time-conversion/problem

struct TimeConversion {
    
    func solve() {
        print(timeConversion(s: "07:05:45PM"))
    }
    
    func timeConversion(s: String) -> String {
        let split = s.dropLast(2).split(separator: ":")
        let hh = split[0]
        let mm = split[1]
        let ss = split[2]
        let pm = String(s.suffix(2)) == "PM"

        if pm {
            var hhMil = String((Int(hh)! + 12) % 24)
            if hhMil == "0" {
                hhMil = "12"
            }
            if hhMil.count == 1 { hhMil = "0" + hhMil }
            return "\(hhMil):\(mm):\(ss)"
        } else {
            if hh == "12" {
                return "00" + String(s.dropLast(2)).dropFirst(2)
            } else {
                return String(s.dropLast(2))
            }
        }
    }

    
}
