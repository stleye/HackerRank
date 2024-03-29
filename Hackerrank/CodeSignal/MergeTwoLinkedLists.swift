//
//  MergeTwoLinkedLists.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 08/02/2024.
//

import Foundation

//https://app.codesignal.com/interview-practice/question/6rE3maCQwrZS3Mm2H/description

struct MergeTwoLinkedLists {

    func solve() {
        let a = ListNode(1)
        a.next = ListNode(1)
        a.next?.next = ListNode(2)
        a.next?.next?.next = ListNode(4)

        let b = ListNode(0)
        b.next = ListNode(3)
        b.next?.next = ListNode(5)

        print(solution(l1: a, l2: b))
    }

    func solution(l1: ListNode<Int>?, l2: ListNode<Int>?) -> ListNode<Int>? {
        guard let l1 = l1 else { return l2 }
        guard let l2 = l2 else { return l1 }

        if l1.value < l2.value {
            l1.next = solution(l1: l1.next, l2: l2)
            return l1
        } else {
            l2.next = solution(l1: l1, l2: l2.next)
            return l2
        }
    }
    
}
