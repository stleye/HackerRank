//
//  QueueUsingTwoStacks.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 26/01/2024.
//

import Foundation


struct QueueUsingTwoStacks {

    func solve() {
        var q = Queue<Int>()
        q.enqueue(42)
        q.dequeue()
        q.enqueue(14)
        print(q.front()!)
        q.enqueue(28)
        print(q.front()!)
        q.enqueue(60)
        q.enqueue(78)
        q.dequeue()
        q.dequeue()
    }

//HackerRank does not provide a parser in this case so I have to implemented myself
    
//let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
//FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
//let fileHandle = FileHandle(forWritingAtPath: stdout)!
//
//guard let s = Int(readLine() ?? "") else { fatalError("Bad input") }
//
//var queue = Queue<Int>()
//
//for i in 0..<s {
//    let query = readLine()!.split(separator: " ").map { Int($0)! }
//
//    switch query[0] {
//    case 1:
//        queue.enqueue(query[1])
//    case 2:
//        let _ = queue.dequeue()
//    case 3:
//        if let result = queue.front() {
//            fileHandle.write(String(result).data(using: .utf8)!)
//            fileHandle.write("\n".data(using: .utf8)!)
//        }
//    default:
//        break
//    }
//}
//}

}

struct Queue<T> {
    var stack1 = Stack<T>()
    var stack2 = Stack<T>()
    
    mutating func enqueue(_ t: T) {
        stack1.push(t)
    }
    
    mutating func dequeue() -> T? {
        self.moveAllToSecondStack()
        var res = stack2.pop()
        self.moveAllToFirstStack()
        return res
    }

    mutating func front() -> T? {
        self.moveAllToSecondStack()
        var res = stack2.front()
        self.moveAllToFirstStack()
        return res
    }

    mutating private func moveAllToSecondStack() {
        while !stack1.isEmpty {
            stack2.push(stack1.pop()!)
        }
    }

    mutating private func moveAllToFirstStack() {
        while !stack2.isEmpty {
            stack1.push(stack2.pop()!)
        }
    }

}

struct Stack<T> {

    private var elements: [T] = []

    mutating func push(_ t: T) {
        elements.append(t)
    }

    mutating func pop() -> T? {
        return elements.removeLast()
    }

    func front() -> T? {
        return elements.last
    }

    var isEmpty: Bool {
        return elements.isEmpty
    }

}
