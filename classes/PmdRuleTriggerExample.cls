public class PmdRuleTriggerExample {

    // ❌ ApexBadCrypto
    public static void badCryptoExample() {
        Blob data = Blob.valueOf('SensitiveData');

        // Insecure algorithm – PMD flags this
        Blob hash = Crypto.generateDigest('MD5', data);
    }

    // ❌ EmptyCatchBlock
    public static void emptyCatchExample() {
        try {
            Integer x = 10 / 0;
        } catch (Exception e) {
            // intentionally empty
        }
    }

    // ❌ CognitiveComplexity
    public static void complexMethod(Integer input) {
        if (input > 0) {
            for (Integer i = 0; i < input; i++) {
                if (Math.mod(i, 2) == 0) {
                    if (i > 5) {
                        while (i < 20) {
                            if (i == 10) {
                                break;
                            } else if (i == 15) {
                                continue;
                            } else {
                                try {
                                    if (input / (i - 10) > 1) {
                                        System.debug('Complex logic');
                                    }
                                } catch (Exception e) {
                                    // empty on purpose
                                }
                            }
                            i++;
                        }
                    }
                } else if (i < 0) {
                    System.debug('Never reached');
                }
            }
        } else if (input == 0) {
            System.debug('Zero');
        } else {
            if (input < -10) {
                System.debug('Negative large');
            }
        }
    }

    // ❌ AvoidBooleanMethodParameters
    public static void processData(Boolean isActive) {
        if (isActive) {
            System.debug('Active flow');
        } else {
            System.debug('Inactive flow');
        }
    }
}