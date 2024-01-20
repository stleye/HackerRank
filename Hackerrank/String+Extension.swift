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

}
