#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    int N;
    cin >> N;

    vector<int> elements(N);

    for (int i = 0; i < N; i++) {
        cin >> elements[i];
    }

    for (int j = N-1; j >= 0; j--) {
        printf("%d ", elements[j]);
    }

    return 0;
}
