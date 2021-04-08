class Solution {
    public int countPrimes(int n) {
        int output = 0;
        for (int i = 2; i < n; i++) {
            if (isPrime(i)) {
                output += 1;
            }
        }

        return output;
    }

    public boolean isPrime(int n) {
        boolean isPrime = true;
        for (int i = 2; i <= n; i++) {
            if (n % i == 0 && i != 1 && i != n) {
                isPrime = false;
            }
        }
        return isPrime;
    }
}