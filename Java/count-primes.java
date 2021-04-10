class Solution {
    public int countPrimes(int n) {
        int count = 0;
        int primes[] = new int[n + 1];

        for (int i = 2; i < n; i++) {
            if (checkArray(i, primes, count)) {
            } else if (isPrime(i)) {
                primes[count] = i;
                count += 1;
            }
        }

        return count;
    }

    public boolean isPrime(int n) {
        boolean isPrime = true;
        for (int i = 2; i * i <= n; i++) {
            if (n % i == 0 && i != 1 && i != n) {
                isPrime = false;
            }
        }
        return isPrime;
    }

    public boolean checkArray(int n, int primes[], int count) {
        // returns true if the specified n divisible by our primes list
        // else returns false

        for (int i = 0; i < count; i++) {
            if (n % (primes[i]) == 0) {
                return true;
            }
        }
        return false;
    }
}