//
//  AreEquallyStrong.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 12/02/2024.
//

import Foundation

//https://app.codesignal.com/arcade/intro/level-5/g6dc9KJyxmFjB98dL

struct AreEquallyStrong {
    
    func solve() {
        print(solution(yourLeft: 15, yourRight: 10, friendsLeft: 15, friendsRight: 9))
    }

    func solution(yourLeft: Int, yourRight: Int, friendsLeft: Int, friendsRight: Int) -> Bool {
        return max(yourLeft, yourRight) == max(friendsLeft, friendsRight) && min(yourLeft, yourRight) == min(friendsLeft, friendsRight)
    }

    
}
