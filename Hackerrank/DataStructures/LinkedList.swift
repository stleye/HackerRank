//
//  LinkedList.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 05/02/2024.
//

import Foundation

struct LinkedList<T> {
    
    private(set) var head: Node?
    private(set) var last: Node?
    private(set) var count = 0

    class Node {
        var value: T
        var next: Node?

        init(value: T, next: Node? = nil) {
            self.value = value
            self.next = next
        }
    }

    mutating func append(_ value: T) {
        if self.count == 0 {
            self.head = Node(value: value)
            self.last = self.head
        } else {
            self.last?.next = Node(value: value)
            self.last = self.last?.next
        }
        count += 1
    }

}
