//
//  Queue.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 10/02/2024.
//

import Foundation

struct Queue<T> {
    
    private var elements: [T] = []
    
    var count: Int {
        elements.count
    }

    mutating func enqueue(_ t: T) {
        elements.append(t)
    }

    @discardableResult
    mutating func dequeue() -> T? {
        return elements.removeFirst()
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
