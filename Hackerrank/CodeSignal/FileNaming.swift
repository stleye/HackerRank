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
        var dict = [String: String]()
        var res  = [String]()
        for name in names {
            dict[name] = (dict[name] ?? 0) + 1
            if dict[name] == 1 {
                res.append(name)
            } else {
                res.append("\(name)(\(dict[name]!-1))")
            }
//            let count = (dict[name] ?? 1) + 1
//            dict[name] = count
//            
//            if count > 1 {
//                res.append("\(name)(\(count))")
//            } else {
//                res.append("\(name)")
//            }
        }

        return res
    }

    
}
