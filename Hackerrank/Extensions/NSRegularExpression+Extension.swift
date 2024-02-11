//
//  NSRegularExpression+Extension.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 11/02/2024.
//

import Foundation

extension NSRegularExpression {
    
    convenience init(_ pattern: String) {
        do {
            try self.init(pattern: pattern)
        } catch {
            preconditionFailure("Illegal regular expression: \(pattern)")
        }
    }

    func matches(_ inputString: String) -> Bool {
        let range = NSRange(inputString.startIndex..., in: inputString)
        return self.firstMatch(in: inputString, range: range) != nil
    }

}
