class Solution {
    public int countPrimes(int n) {
        boolean isPrime[] = new boolean[n];

        for (int i = 2; i < n; i++) {
            isPrime[i] = true;
        }

        for (int i = 2; i * i < n; i++) {
            if (!isPrime[i])
                continue;
            for (int j = i * i; j < n; j += i) {
                isPrime[j] = false;
            }
        }

        int count = 0;
        for (int i = 2; i < n; i++) {
            if (isPrime[i])
                count++;
        }

        return count;
    }
}

// public boolean isPrime(int n) {
// boolean isPrime = true;

// return isPrime;
// }

// public boolean checkArray(int n, int primes[], int count) {
// // returns true if the specified n divisible by our primes list
// // else returns false

// for (int i = 0; i < count; i++) {
// if (n % (primes[i]) == 0) {
// return true;
// }
// }
// return false;
// }
// }