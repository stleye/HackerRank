//
//  CeasarsCipher.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 18/01/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/caesar-cipher-1/problem

struct CaesarsCipher {

    func solve() {
        print(self.caesarCipher(s: "There's a starman waiting in the Sky", k: 3))
    }

    func caesarCipher(s: String, k: Int) -> String {
        var result = ""
        for char in s {
            result += String(cipher(char, k: k))
        }
        return result
    }

    func cipher(_ c: Character, k: Int) -> Character {
        var c = c
        let isUppercase = c.isUppercase
        if isUppercase {
            c = Character(c.lowercased())
        }
        let alphabet = "abcdefghijklmnopqrstuvwxyz"
        if let index = alphabet.firstIndex(of: c) {
            let newIndex = (index + k) % 26
            return isUppercase ? Character(alphabet[newIndex].uppercased()) : alphabet[newIndex]
        }
        return c
    }

}
