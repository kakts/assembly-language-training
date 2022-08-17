/**
 * @file fib.c
 * 7.8 GASの疑似命令
 * 
 * フィボナッチ数列の計算
 */

int fib(int n) {
    if (n == 0) {
        return 0;
    }
    if (n == 1) {
        return 1;
    }

    return fib(n - 1) + fib(n - 2);
}

int main (void) {
    return fib(10);
}
