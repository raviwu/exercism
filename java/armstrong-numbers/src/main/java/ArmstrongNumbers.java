import java.lang.Math;

class ArmstrongNumbers {

    boolean isArmstrongNumber(int numberToCheck) {
        String numString = Integer.toString(numberToCheck);
        int length = numString.length();

        int aggregateNumber = 0;

        for (int i = 0; i < length; i++) {
            aggregateNumber = (int) (aggregateNumber + Math.pow(Integer.parseInt(numString.substring(i, i + 1)), length));
        }

        return aggregateNumber == numberToCheck;
    }
}

