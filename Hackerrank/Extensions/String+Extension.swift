//
//  String+Extension.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 20/01/2024.
//

import Foundation

extension String {
    
    subscript(index: Int) -> Character {
        return self[self.index(startIndex, offsetBy: index)]
    }

    func firstIndex(of element: Self.Element) -> Int? {
        guard let index: String.Index = firstIndex(of: element) else { return nil }
        return self.distance(from: self.startIndex, to: index)
    }
    
    func isPalindrome() -> Bool {
        return self.isPalindrome(left: 0, right: self.count - 1)
    }

    func isPalindrome(left: Int, right: Int) -> Bool {
        if left < 0 || right >= self.count || left > right { return false }
        if right - left == 0 { return true }
        var l = left
        var r = right
        while l < r {
            if self[l] != self[r] {
                return false
            }
            l += 1
            r -= 1
        }
        return true
    }

}
