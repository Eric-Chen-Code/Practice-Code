public class EvenDigitSum {
    public static int getEvenDigitSum(int number) {
        int sum=0;
        if (number<0) {
            return -1;
        }
        else {
            for (int i=number; i>0; i/=10) {
                if ((i>10) && (((i%10)%2==0))) {
                    sum += (i%10);
                }
                else if ((i<10) && (i%2==0)) {
                    sum += i;
                }
        }
        }
        return sum;
    }
}