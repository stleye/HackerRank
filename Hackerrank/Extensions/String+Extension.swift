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

    subscript (bounds: CountableClosedRange<Int>) -> String {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start...end])
    }

    subscript (bounds: CountableRange<Int>) -> String {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start..<end])
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
    
    func regexMatches(pattern: String) -> [String] {
        let regex = try! NSRegularExpression(pattern: pattern)
        let matches = regex.matches(in: self, range: NSRange(self.startIndex..., in: self))
        var res: [String] = []
        for match in matches {
            let matchRange = Range(match.range, in: self)!
            res.append(String(self[matchRange]))
        }
        return res
    }

}
