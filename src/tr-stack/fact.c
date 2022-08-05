/**
 * @file fact.c
 */

/**
 * nの階乗を計算する
 */
int fact(int n) {
    if (n == 1) {
        return 1;
    }

    return n * fact(n - 1);
}

int main(void) {
    int n = fact(3);

    return 0;
}
