//
//  AcmIcpcTeam.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 03/07/2025.
//

//https://www.hackerrank.com/challenges/acm-icpc-team
//This code works, but hackerrank throws time limit exception, however, if I run the same code using C++ it works, so it's not a
//time issue, it's a problem with Hackerrank

struct AcmIcpcTeam {
    func solve() {
        print(acmTeam(topic: ["11101", "10101", "11001", "10111", "10000", "01110"]))
    }

    func acmTeam(topic: [String]) -> [Int] {
        if topic.count == 0 { return [] }
        if topic.first!.count == 0 { return [] }

        let numberOfPeople = topic.count
        var maxTopicsShared = -1
        var maxTeam = 0

        for i in 0..<numberOfPeople {
            for j in i+1..<numberOfPeople {
                let topicsShared = topicsSharedBy(person1: topic[i], and: topic[j])
                if topicsShared > maxTopicsShared {
                    maxTopicsShared = topicsShared
                    maxTeam = 1
                } else if topicsShared == maxTopicsShared {
                    maxTopicsShared = topicsShared
                    maxTeam += 1
                }
            }
        }

        return [maxTopicsShared, maxTeam]
    }

    func topicsSharedBy(person1: String, and person2: String) -> Int {
        zip(person1, person2).reduce(0) { result, pair in
            pair.0 == "1" || pair.1 == "1" ? result + 1 : result
        }
    }

}
