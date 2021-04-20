#include <stdio.h>
#include "Median.h"

int main() {
    int a[5] = {0, 2, 4, 1, 3};
    int length = sizeof(a) / sizeof(int);
    printf("Array: [");
    for (int i = 0; i < length; i++) {
        printf("%d", a[i]);
        if (i != length - 1) printf(", ");
    }
    printf("]\n");
    printf("result=%d", Median(a, length));
}
