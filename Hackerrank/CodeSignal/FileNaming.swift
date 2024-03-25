//
//  FileNaming.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 19/03/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-12/sqZ9qDTFHXBNrQeLC

struct FileNaming {
    
    func solve() {
        print(solution(names: ["doc", "doc", "image", "doc(1)", "doc"]))
    }
    
    func solution(names: [String]) -> [String] {
        var result = [String]()
        for i in 0..<names.count {
            var count = 0
            var name = names[i]
            while result.contains(name) {
                count += 1
                name = names[i] + "(\(count))"
            }
            result.append(name)
        }
        return result
    }


    
}
