#include <iostream>

using namespace std;

long long fibonacciSum(int n) {
    long long a = 0, b = 1, total = 0;
    for (int i = 0; i < n; i++) {
        total += a;
        long long temp = a;
        a = b;
        b = temp + b;
    }
    return total;
}

int main() {
    cout << fibonacciSum(100) << endl;
  
    return 0;
}
