//
//  MockTest.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 24/01/2024.
//

import Foundation

struct TrackTour {
    
    func solve() {
        print(truckTour(petrolpumps: [[1, 5], [10, 3], [3, 4]]))
    }

    func truckTour(petrolpumps: [[Int]]) -> Int {
        for i in 0..<petrolpumps.count {
            var partialSum = 0
            for j in i..<petrolpumps.count+i  {
                let primeJ = j % petrolpumps.count
                let diff = petrolpumps[primeJ][0] - petrolpumps[primeJ][1]
                partialSum += diff
                if partialSum < 0 { break }
            }
            if partialSum >= 0 {
                return i
            }
        }
        return 0
    }
    
    
}
