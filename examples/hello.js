function fibonacciSum(n) {
    let a = 0, b = 1, total = 0;
    for (let i = 0; i < n; i++) {
        total += a;
        [a, b] = [b, a + b];
    }
    return total;
}

console.log(fibonacciSum(100));
