//
//  MergeTwoLinkedLists.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 08/02/2024.
//

import Foundation

struct MergeTwoLinkedLists {
    
    func solve() {
        let a = ListNode(1)
        a.next = ListNode(1)
        a.next?.next = ListNode(2)
        a.next?.next?.next = ListNode(4)

        let b = ListNode(0)
        b.next = ListNode(3)
        b.next?.next = ListNode(5)

        solution(l1: a, l2: nil)
    }
    
    func solution(l1: ListNode<Int>?, l2: ListNode<Int>?) -> ListNode<Int>? {
        guard l1 != nil || l2 != nil else { return nil }
        
        var r: ListNode<Int>? = ListNode(0)
        var il1 = l1
        var il2 = l2
        var ir = r

        while il1 != nil || il2 != nil {
            if il1 != nil && il2 != nil {
                if il1!.value < il2!.value {
                    ir?.next = ListNode(il1!.value)
                    il1 = il1!.next
                } else {
                    ir?.next = ListNode(il2!.value)
                    il2 = il2!.next
                }
            } else if il1 != nil  {
                ir?.next = ListNode(il1!.value)
                il1 = il1!.next
            } else {
                ir?.next = ListNode(il2!.value)
                il2 = il2!.next
            }
            ir = ir?.next
        }

        r = r?.next

        return r
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
