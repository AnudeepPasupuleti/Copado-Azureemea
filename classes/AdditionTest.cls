@IsTest
private class AdditionTest {

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
}