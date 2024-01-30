//
//  QueueUsingTwoStacks.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 26/01/2024.
//

import Foundation


//https://www.hackerrank.com/challenges/queue-using-two-stacks/problem

struct QueueUsingTwoStacks {

    func solve() {
        var q = Queue<Int>()

        q.enqueue(1)
        q.enqueue(2)
        q.enqueue(3)
        q.enqueue(4)
        q.enqueue(5)

        print(q.dequeue())
        print(q.dequeue())
        print(q.dequeue())

        q.enqueue(6)
        q.enqueue(7)
        q.enqueue(8)

        print(q.front())
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

    @discardableResult
    mutating func dequeue() -> T? {
        moveAllToSecondStack()
        return stack2.pop()
    }

    mutating func front() -> T? {
        moveAllToSecondStack()
        return stack2.front()
    }

    mutating private func moveAllToSecondStack() {
        if stack2.count == 0 {
            while stack1.isNotEmpty {
                stack2.push(stack1.pop()!)
            }
        }
    }


}

struct Stack<T> {

    private var elements: [T] = []
    
    var count: Int {
        elements.count
    }

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

    var isNotEmpty: Bool {
        return !self.isEmpty
    }

}

