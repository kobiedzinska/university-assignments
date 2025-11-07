#include <stdio.h>
void addBig(int a[], int b[], int size);
void subBig(int a[], int b[], int size);
void mulBig(int a[], int b[], int size, int result[]);

int main() {
    int x[] = {1,5,3,9,5,3};
    int y[] = {4,1,2,9,6,6};
    mulBig(x, y, 6);
    printf("%d %d %d %d %d %d\n", x[0], x[1], x[2], x[3], x[4], x[5]);
    return 0;
}