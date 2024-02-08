//
//  IsListPalindrome.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 06/02/2024.
//

import Foundation

//https://app.codesignal.com/interview-practice/question/HmNvEkfFShPhREMn4/description

struct IsListPalindrome {
    
    func solve() {
        let l = ListNode(1)
        l.next = ListNode(1)
        l.next?.next = ListNode(2)
        l.next?.next?.next = ListNode(1)
        l.next?.next?.next?.next = ListNode(1)
        print(solution(l: l))
    }
    
    func solution(l: ListNode<Int>?) -> Bool {
        if l == nil { return true }

        var n = 1
        var currentPointer = l
        while currentPointer?.next != nil {
            n += 1
            currentPointer = currentPointer?.next
        }
        
        if n == 1 { return true }
        
        var half = l
        for _ in 1...Int(ceil(Double(n/2))) {
            half = half?.next
        }
        
        //revert second half
        var left = half
        var middle = half?.next
        var right = half?.next?.next

        while middle != nil {
            middle?.next = left
            left = middle
            middle = right
            right = right?.next
        }

        half = left
        left = l
        for i in 1...n/2 {
            if left?.value != half?.value {
                return false
            }
            left = left?.next
            half = half?.next
        }

        return true
        
    }
    
    // Singly-linked lists are already defined with this interface:
    public class ListNode<T> {
        public var value: T
        public var next: ListNode<T>?
        public init(_ x: T) {
            self.value = x
            self.next = nil
        }
    }
}
