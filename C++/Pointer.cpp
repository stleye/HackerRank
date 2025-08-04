#include <stdio.h>

//https://www.hackerrank.com/challenges/c-tutorial-pointer

void update(int *a,int *b) {
    int a_p = *a;
    (*a) += *b;
    if ((a_p - *b) < 0) {
        (*b) = -((a_p) - *b);
    } else {
        (*b) = ((a_p) - *b);
    }
}

int main() {
    int a, b;
    int *pa = &a, *pb = &b;
    
    scanf("%d %d", &a, &b);
    update(pa, pb);
    printf("%d\n%d", a, b);

    return 0;
}