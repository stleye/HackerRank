//
//  DetectHTMLTags.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 16/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/detect-html-tags/problem

struct DetectHTMLTags {
    
    func solve() {
        print(parse(inputString: #"<p><a href="http://www.quackit.com/html/tutorial/html_links.cfm">Example Link</a></p>"#))
    }

    func parse(inputString: String) -> String {
        let pattern = #"<\s*[^>]\s*>"#
        let regex = try! NSRegularExpression(pattern: pattern)
        let matches = regex.matches(in: inputString, range: NSRange(inputString.startIndex..., in: inputString))
        var res = ""

        for match in matches {
            let g1 = String(inputString[Range(match.range(at: 1), in: inputString)!])
            let g2 = String(inputString[Range(match.range(at: 2), in: inputString)!])
            res += "\(g1),\(g2)\n"
        }
        
        return String(res.dropLast())
    }
    
}
