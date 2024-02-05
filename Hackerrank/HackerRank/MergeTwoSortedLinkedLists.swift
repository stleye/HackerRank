//
//  MergeTwoSortedLinkedLists.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 05/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/merge-two-sorted-linked-lists/problem

struct MergeTwoSortedLinkedLists {
    
    func solve() {
        var l1 = LinkedList<Int>()
        l1.append(1)
        //l1.append(2)
        //l1.append(3)
        
        var l2 = LinkedList<Int>()
        l2.append(3)
        //l2.append(4)
        
        let _ = mergeTwoSortedLinkedLists(l1, l2)
    }
    
    func mergeTwoSortedLinkedLists(_ l1: LinkedList<Int>, _ l2: LinkedList<Int>) -> LinkedList<Int> {
        
        var result = LinkedList<Int>()
        var h1 = l1.head
        var h2 = l2.head

        for _ in 1...(l1.count + l2.count) {
            if h1 != nil && h2 != nil {
                if h1!.value < h2!.value {
                    result.append(h1!.value)
                    h1 = h1!.next
                } else {
                    result.append(h2!.value)
                    h2 = h2!.next
                }
            } else if h1 == nil {
                result.append(h2!.value)
                h2 = h2!.next
            } else if h2 == nil {
                result.append(h1!.value)
                h1 = h1!.next
            }
        }

        return result
    }

    func parseInput() {
        let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
        FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
        let fileHandle = FileHandle(forWritingAtPath: stdout)!

        guard let t = Int(readLine() ?? "") else { fatalError("Bad input") }
        
        for _ in 1...t {
            guard let n = Int(readLine() ?? "") else { fatalError("Bad input") }
            
            var linkedList1 = LinkedList<Int>()
            var linkedList2 = LinkedList<Int>()
            
            for _ in 1...n {
                guard let elem = Int(readLine() ?? "") else { fatalError("Bad input") }
                linkedList1.append(elem)
            }
            
            guard let m = Int(readLine() ?? "") else { fatalError("Bad input") }
            
            for _ in 1...m {
                guard let elem = Int(readLine() ?? "") else { fatalError("Bad input") }
                linkedList2.append(elem)
            }
            
            let lr = mergeTwoSortedLinkedLists(linkedList1, linkedList2)
            var elem = lr.head
            
            var output = ""

            while elem != nil {
                output += String(elem!.value)
                output += " "
                elem = elem?.next
            }
            output = String(output.dropLast())
            fileHandle.write(output.data(using: .utf8)!)
            fileHandle.write("\n".data(using: .utf8)!)
        }
    }
    
}
