public class PlayingCat {
    public static boolean isCatPlaying (boolean summer, int temperature) {
        if (temperature <= 35 && temperature >= 25) {
            return true;
        } else if (summer == true && temperature<=45 && temperature>=25) {
            return true;
        } return false;
        }
    }

