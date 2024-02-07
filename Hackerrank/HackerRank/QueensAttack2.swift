//
//  QueensAttack2.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 06/02/2024.
//

import Foundation

struct QueensAttack2 {
    
    
    
    func solve() {
        let obstacles = [[54, 87],
                        [64, 97],
                        [42, 75],
                        [32, 65],
                        [42, 87],
                        [32, 97],
                        [54, 75],
                        [64, 65],
                        [48, 87],
                        [48, 75],
                        [54, 81],
                        [42, 81],
                        [45, 17],
                        [14, 24],
                        [35, 15],
                        [95, 64],
                        [63, 87],
                        [25, 72],
                        [71, 38],
                        [96, 97],
                        [16, 30],
                        [60, 34],
                        [31, 67],
                        [26, 82],
                        [20, 93],
                        [81, 38],
                        [51, 94],
                        [75, 41],
                        [79, 84],
                        [79, 65],
                        [76, 80],
                        [52, 87],
                        [81, 54],
                        [89, 52],
                        [20, 31],
                        [10, 41],
                        [32, 73],
                        [83, 98],
                        [87, 61],
                        [82, 52],
                        [80, 64],
                        [82, 46],
                        [49, 21],
                        [73, 86],
                        [37, 70],
                        [43, 12],
                        [94, 28],
                        [10, 93],
                        [52, 25],
                        [50, 61],
                        [52, 68],
                        [52, 23],
                        [60, 91],
                        [79, 17],
                        [93, 82],
                        [12, 18],
                        [75, 64],
                        [69, 69],
                        [94, 74],
                        [61, 61],
                        [46, 57],
                        [67, 45],
                        [96, 64],
                        [83, 89],
                        [58, 87],
                        [76, 53],
                        [79, 21],
                        [94, 70],
                        [16, 10],
                        [50, 82],
                        [92, 20],
                        [40, 51],
                        [49, 28],
                        [51, 82],
                        [35, 16],
                        [15, 86],
                        [78, 89],
                        [41, 98],
                        [70, 46],
                        [79, 79],
                        [24, 40],
                        [91, 13],
                        [59, 73],
                        [35, 32],
                        [40, 31],
                        [14, 31],
                        [71, 35],
                        [96, 18],
                        [27, 39],
                        [28, 38],
                        [41, 36],
                        [31, 63],
                        [52, 48],
                        [81, 25],
                        [49, 90],
                        [32, 65],
                        [25, 45],
                        [63, 94],
                        [89, 50],
                        [43, 41]]

        print(queensAttack(n: 100, k: 100, r_q: 48, c_q: 81, obstacles: obstacles))
        
//        //var obstacles = [[1, 7], [2, 6], [4, 1], [4, 6], [4, 7], [4, 8], [7, 1], [7, 7], [8, 8]].shuffled()
//        var obstacles = [[1, 7], [2, 6], [4, 1], [4, 6], [4, 7], [4, 8], [7, 1], [7, 7], [8, 8], [6, 2]].shuffled()
//        print(queensAttack(n: 8, k: 8, r_q: 8, c_q: 6, obstacles: obstacles))
    }
    
    typealias Position = (row: Int, col: Int)
    
    func queensAttack(n: Int, k: Int, r_q: Int, c_q: Int, obstacles: [[Int]]) -> Int {
        let diagonal = ((n-1) + 2*quadrant(n: n, r_q: r_q, c_q: c_q))
        var total = 2*(n-1) + diagonal

        var closestL: Position?
        var closestR: Position?
        var closestB: Position?
        var closestT: Position?
        var closestUR: Position?
        var closestUL: Position?
        var closestLR: Position?
        var closestLL: Position?

        for obstacle in obstacles {
            let row = obstacle[0]
            let column = obstacle[1]
            if let location = obstacleLocation(row: row, column: column, r_q: r_q, c_q: c_q) {
                switch location {
                case .right:
                    if closestR == nil || abs(column - c_q) < abs(closestR!.col - c_q) {
                        closestR = (row, column)
                    }
                case .left:
                    if closestL == nil || abs(column - c_q) < abs(closestL!.col - c_q) {
                        closestL = (row, column)
                    }
                case .top:
                    if closestT == nil || abs(row - r_q) < abs(closestT!.row - r_q) {
                        closestT = (row, column)
                    }
                case .bottom:
                    if closestB == nil || abs(row - r_q) < abs(closestB!.row - r_q) {
                        closestB = (row, column)
                    }
                case .upperRight:
                    if closestUR == nil || abs(row - r_q) < abs(closestUR!.row - r_q) {
                        closestUR = (row, column)
                    }
                case .upperLeft:
                    if closestUL == nil || abs(row - r_q) < abs(closestUL!.row - r_q) {
                        closestUL = (row, column)
                    }
                case .lowerRight:
                    if closestLR == nil || abs(row - r_q) < abs(closestLR!.row - r_q) {
                        closestLR = (row, column)
                    }
                case .lowerLeft:
                    if closestLL == nil || abs(row - r_q) < abs(closestLL!.row - r_q) {
                        closestLL = (row, column)
                    }
                }
            }
        }
        
        if closestB != nil {
            total -= closestB!.row
        }
        if closestT != nil {
            total = total - (n-closestT!.row + 1)
        }
        if closestR != nil {
            total = total - (n-closestR!.col + 1)
        }
        if closestL != nil {
            total -= closestL!.col
        }
        if closestUR != nil {
            total -= min(n-closestUR!.row + 1, n-closestUR!.col + 1)
        }
        if closestUL != nil {
            total -= min(n-closestUL!.row + 1, closestUL!.col)
        }
        if closestLR != nil {
            total -= min(closestLR!.row, n-closestLR!.col + 1)
        }
        if closestLL != nil {
            total -= min(closestLL!.row, closestLL!.col)
        }
        
        return total
    }

    func quadrant(n: Int, r_q: Int, c_q: Int) -> Int {
        let r = min(n-r_q+1, r_q)
        let c = min(n-c_q+1, c_q)
        let d = min(r, c)

        return d - 1
    }
    
    enum ObstacleLocation {
        case right
        case left
        case top
        case bottom
        case upperRight
        case upperLeft
        case lowerRight
        case lowerLeft
    }
    
    func obstacleLocation(row: Int, column: Int, r_q: Int, c_q: Int) -> ObstacleLocation? {
        if row == r_q {
            if column > c_q {
                return .right
            } else {
                return .left
            }
        }
        
        if column == c_q {
            if row > r_q {
                return .top
            } else {
                return .bottom
            }
        }
        
        if r_q - row == c_q - column {
            if r_q - row < 0 {
                return .upperRight
            } else {
                return .lowerLeft
            }
        } else if abs(r_q - row) == abs(c_q - column) {
            if r_q - row > 0 && c_q - column < 0 {
                return .lowerRight
            } else {
                return .upperLeft
            }
        }

        return nil
    }

}
