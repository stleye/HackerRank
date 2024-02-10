//
//  RemoveKFromList.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 05/02/2024.
//

import Foundation

//https://app.codesignal.com/interview-practice/question/gX7NXPBrYThXZuanm/description

struct RemoveKFromList {
    
    func solve() {
        let l = ListNode(1)
        l.next = ListNode(1)
        l.next?.next = ListNode(1)
        l.next?.next?.next = ListNode(1)
        l.next?.next?.next?.next = ListNode(10)
        l.next?.next?.next?.next?.next = ListNode(10)
        l.next?.next?.next?.next?.next?.next = ListNode(10)
        l.next?.next?.next?.next?.next?.next?.next = ListNode(10)
        solution(l: l, k: 10)
    }
    
    @discardableResult
    func solution(l: ListNode<Int>?, k: Int) -> ListNode<Int>? {
        var l = l
        var current = l
        
        while l?.value == k {
            l = l?.next
            current = l
        }

        while current?.next != nil {
            if current?.next?.value == k {
                current?.next = current?.next?.next
            } else {
                current = current?.next
            }
        }
        
        return l
    }

}
