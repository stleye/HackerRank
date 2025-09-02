//
//  NonDivisibleSubset.cpp
//  HackerRank_CPP
//
//  Created by Sebastian Tleye on 02/09/2025.
//

#include "NonDivisibleSubset.hpp"

void NonDivisibleSubset::solve() {
    //nonDivisibleSubset(4, {19, 10, 12, 10, 24, 25, 22});
    nonDivisibleSubset(1, {1});
}

int NonDivisibleSubset::nonDivisibleSubset(int k, vector<int> s) {

    int res {};
    vector<int> remainders(k, 0);

    for (auto e: s) {
        remainders.at(e % k) += 1;
    }
    
    if ((remainders.at(0)) > 0) {
        res++;
    }

    for (int i = 1; i < ceil(k/2.0); i++) {
        res += max(remainders.at(i), remainders.at(k-i));
    }
    
    if (k % 2 == 0) {
        if (remainders.at(k/2) > 0) {
            res += 1;
        }
    }

    return res;

}
