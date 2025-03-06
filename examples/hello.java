// FibonacciSum.java
public class hello {
    public static long fibonacciSum(int n) {
        long a = 0, b = 1, total = 0;
        for (int i = 0; i < n; i++) {
            total += a;
            long temp = a;
            a = b;
            b = temp + b;
        }
        return total;
    }

    public static void main(String[] args) {
        System.out.println(fibonacciSum(100));
    }
}