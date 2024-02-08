//
//  AddTwoHugeNumbers.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 07/02/2024.
//

import Foundation

//https://app.codesignal.com/interview-practice/question/RvDFbsNC3Xn7pnQfH/description

struct AddTwoHugeNumbers {
    
    func solve() {
        let a = ListNode(1)
        //a.next = ListNode(4)
        //a.next?.next = ListNode(5)

        let b = ListNode(9999)
        b.next = ListNode(9999)
        b.next?.next = ListNode(9999)
        b.next?.next?.next = ListNode(9999)
        b.next?.next?.next?.next = ListNode(9999)
        b.next?.next?.next?.next?.next = ListNode(9999)

        solution(a: a, b: b)
    }

    func solution(a: ListNode<Int>?, b: ListNode<Int>?) -> ListNode<Int>? {
        if a == nil || b == nil { return nil }

        var ar = reverseList(head: a)
        var br = reverseList(head: b)

        var carry = 0
        let result = ListNode(0)
        var iterator: ListNode<Int>? = result

        while ar != nil || br != nil {
            var sum = (ar?.value ?? 0) + (br?.value ?? 0) + carry
            if sum >= 10000 {
                sum = sum % 10000
                carry = 1
            } else {
                carry = 0
            }

            iterator?.value = sum
            let newNode = ListNode(1)
            newNode.next = iterator
            iterator = newNode
            
            ar = ar?.next
            br = br?.next
        }
        
        if carry == 0 {
            iterator = iterator?.next
        }

        return iterator
    }

    func reverseList(head: ListNode<Int>?) -> ListNode<Int>? {
        var l = head
        var m = head?.next
        var r = head?.next?.next
        while m != nil {
            m?.next = l
            l = m
            m = r
            r = r?.next
        }
        head?.next = nil
        return l
    }

    public class ListNode<T> {
        public var value: T
        public var next: ListNode<T>?
        public init(_ x: T) {
            self.value = x
            self.next = nil
        }
    }

}
