//
//  Stack.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 02/02/2024.
//

import Foundation

struct Stack<T> {

    private var elements: [T] = []
    
    var count: Int {
        elements.count
    }

    mutating func push(_ t: T) {
        elements.append(t)
    }

    @discardableResult
    mutating func pop() -> T? {
        return elements.removeLast()
    }

    func front() -> T? {
        return elements.last
    }

    var isEmpty: Bool {
        return elements.isEmpty
    }

    var isNotEmpty: Bool {
        return !self.isEmpty
    }

}
