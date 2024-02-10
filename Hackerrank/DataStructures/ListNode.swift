//
//  ListNode.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 09/02/2024.
//

import Foundation

public class ListNode<T> {
    public var value: T
    public var next: ListNode<T>?
    public init(_ x: T) {
        self.value = x
        self.next = nil
    }
 }
