//
//  MessageFromBinaryCode.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 25/03/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-12/sCpwzJCyBy2tDSxKW

struct MessageFromBinaryCode {

    func solve() {
        print(solution(code: "010010000110010101101100011011000110111100100001"))
    }

    func solution(code: String) -> String {
        var res = ""
        var i = 0
        while i < code.count {
            let binaryString = String(code[i..<i+8])
            if let asciiLetter = binaryString.binaryToASCII() {
                res += asciiLetter
            }
            i += 8
        }
        return res
    }

}

extension String {
    func binaryToASCII() -> String? {
        guard let asciiValue = UInt8(self, radix: 2) else {
            return nil
        }
        return String(UnicodeScalar(asciiValue))
    }
}
