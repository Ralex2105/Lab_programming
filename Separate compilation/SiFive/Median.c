#include "Median.h"

int Median(int a[], int length) {
    int result = 0;
    for(int i = 0; i < length; i++) {
        int smaller = 0;
        int bigger = 0;
        for (int j = 0; j < length; j++) {
            if (a[i] - a[j] > 0) bigger++;
            if (a[i] - a[j] < 0) smaller++;
        }
        if ((bigger - smaller <= 1) &&
            (bigger - smaller >= -1)) result = a[i];
    }
    return result;
}
