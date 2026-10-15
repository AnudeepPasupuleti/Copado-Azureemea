@IsTest
private class AdditionTest {

    // --- add() tests ---

    @IsTest
    static void testAddPositiveNumbers() {
        Integer result = Addition.add(3, 5);
        Assert.areEqual(8, result, 'Expected 3 + 5 to equal 8');
    }

    @IsTest
    static void testAddNegativeNumbers() {
        Integer result = Addition.add(-4, -6);
        Assert.areEqual(-10, result, 'Expected -4 + -6 to equal -10');
    }

    @IsTest
    static void testAddZero() {
        Integer result = Addition.add(0, 0);
        Assert.areEqual(0, result, 'Expected 0 + 0 to equal 0');
    }

    @IsTest
    static void testAddPositiveAndNegative() {
        Integer result = Addition.add(10, -3);
        Assert.areEqual(7, result, 'Expected 10 + -3 to equal 7');
    }

    // --- multiply() tests ---

    @IsTest
    static void testMultiplyPositiveNumbers() {
        Integer result = Addition.multiply(3, 5);
        Assert.areEqual(15, result, 'Expected 3 * 5 to equal 15');
    }

    @IsTest
    static void testMultiplyByZero() {
        Integer result = Addition.multiply(7, 0);
        Assert.areEqual(0, result, 'Expected 7 * 0 to equal 0');
    }

    @IsTest
    static void testMultiplyNegativeNumbers() {
        Integer result = Addition.multiply(-3, -4);
        Assert.areEqual(12, result, 'Expected -3 * -4 to equal 12');
    }

    @IsTest
    static void testMultiplyPositiveAndNegative() {
        Integer result = Addition.multiply(6, -2);
        Assert.areEqual(-12, result, 'Expected 6 * -2 to equal -12');
    }
}