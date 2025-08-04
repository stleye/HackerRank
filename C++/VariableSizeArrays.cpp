#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */   
    int a_n;
    int q_n;
    int k;
    int a_i;
    int b_i;
    int e;

    cin >> a_n >> q_n;

    std::vector<std::vector<int>> a;

    for(int i = 0; i < a_n; i++) {
        cin >> k;
        a.push_back(vector<int>());
        for (int j = 0; j < k; j++) {
            cin >> e;
            a[i].push_back(e);
        }
    }

    for(int i = 0; i < q_n; i++) {
        cin >> a_i >> b_i;
        printf("%d ", a[a_i][b_i]);
    }


    return 0;
}