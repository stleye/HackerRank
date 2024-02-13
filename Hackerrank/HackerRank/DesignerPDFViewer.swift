//
//  DesignerPDFViewer.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 13/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/designer-pdf-viewer/problem

struct DesignerPDFViewer {
    
    func solve() {
        var h = [1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5]
        print(designerPdfViewer(h: h, word: "abc"))
        h = [1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 7]
        print(designerPdfViewer(h: h, word: "zaba"))
    }
    
    func designerPdfViewer(h: [Int], word: String) -> Int {
        let letters = "abcdefghijklmnopqrstuvwxyz"
        var indices = [Character: Int]()
        for i in 0..<letters.count {
            indices[letters[i]] = i
        }
        var max = Int.min
        for w in word {
            let height = h[indices[w]!]
            if height > max { max = height }
        }
        return word.count * max
    }
    
}
