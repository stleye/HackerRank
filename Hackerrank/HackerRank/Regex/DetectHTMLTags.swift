//
//  DetectHTMLTags.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 16/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/detect-html-tags/problem

struct DetectHTMLTags {
    
    var pattern: String {
        #"(<\/\s*[^>]*\s*>)|<(\s*[^>\s]+)[^>]*\s*\/>"#
    }

    func solve() {
        //print(tags(from: #"<p><a href="http://www.quackit.com/html/tutorial/html_links.cfm">Example Link</a></p>"#))
        parseInput()
    }

    func tags(from inputString: String) -> Set<String> {
        let regex = try! NSRegularExpression(pattern: pattern)
        let matches = regex.matches(in: inputString, range: NSRange(inputString.startIndex..., in: inputString))
        var tags = Set<String>()

        for match in matches {
            if let range1 = Range(match.range(at: 1), in: inputString) {
                let g1 = String(inputString[range1])
                let s1 = g1.replacingOccurrences(of: "/", with: "")
                let s2 = s1.replacingOccurrences(of: "<", with: "")
                let s3 = s2.replacingOccurrences(of: ">", with: "")
                tags.insert("\(s3)")
            }
            if let range2 = Range(match.range(at: 2), in: inputString) {
                let g2 = String(inputString[range2])
                tags.insert("\(g2)")
            }
        }

        return tags
    }
    
    func parseInput() {
        let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
        FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
        let fileHandle = FileHandle(forWritingAtPath: stdout)!

        guard let n = Int(readLine() ?? "") else { fatalError("Bad input") }

        var res = Set<String>()

        for _ in 1...n {
            guard let line = readLine() else { fatalError("Bad input") }
            res.formUnion(tags(from: line))
        }

        let resStr = res.sorted().joined(separator: ";")

        if !resStr.isEmpty {
            fileHandle.write(resStr.data(using: .utf8)!)
            fileHandle.write("\n".data(using: .utf8)!)
        }
    }
    
}
