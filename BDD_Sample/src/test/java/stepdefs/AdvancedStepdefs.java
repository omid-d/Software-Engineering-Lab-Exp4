package stepdefs;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;
import static org.junit.Assert.*;

public class AdvancedStepdefs {

    private AdvancedCalculator calculator = new AdvancedCalculator();
    private double result;
    private double num1;
    private double num2;

    @Given("Two input numbers, {double} and {double}")
    public void givenTwoInputNumbers(double number1, double number2) {
        num1 = number1;
        num2 = number2;
    }

    @When("I add the two numbers")
    public void whenIAddTheTwoNumbers() {
        try {
            result = calculator.add(num1, num2);
        } catch (ArithmeticException e) {
            result = Double.NaN;  // Handle overflow or underflow
        }
    }


    @When("I subtract the two numbers")
    public void whenISubtractTheTwoNumbers() {
        result = calculator.subtract(num1, num2);
    }

    @When("I multiply the two numbers")
    public void whenIMultiplyTheTwoNumbers() {
        try {
            result = calculator.multiply(num1, num2);
        } catch (ArithmeticException e) {
            result = Double.NaN;  // In case of overflow, set result to NaN to indicate failure
        }
    }


    @When("I divide the two numbers")
    public void whenIDivideTheTwoNumbers() {
        try {
            result = calculator.divide(num1, num2);
        } catch (ArithmeticException e) {
            result = Double.NaN; // Division by zero results in NaN
        }
    }

    @When("I calculate the power")
    public void whenICalculateThePower() {
        try {
            result = calculator.power(num1, num2);
        } catch (ArithmeticException e) {
            result = Double.NaN;  // Handle undefined results
        }
    }


    @Then("an arithmetic exception should be thrown")
    public void thenAnArithmeticExceptionShouldBeThrown() {
        try {
            // If the result is NaN, it indicates an exception like overflow or underflow
            assertTrue(Double.isNaN(result));
        } catch (ArithmeticException e) {
            // This is expected, so it's okay
            System.out.println("Expected exception: " + e.getMessage());
        }
    }


    // When step for addition
    @When("I perform add on the two numbers")
    public void whenIAddTheTwoNumberss() {
        result = calculator.add(num1, num2);
    }

    // When step for subtraction
    @When("I perform subtract on the two numbers")
    public void whenISubtractTheTwoNumberss() {
        result = calculator.subtract(num1, num2);
    }

    // When step for multiplication
    @When("I perform multiply on the two numbers")
    public void whenIMultiplyTheTwoNumberss() {
        result = calculator.multiply(num1, num2);
    }

    // When step for division
    @When("I perform divide on the two numbers")
    public void whenIDivideTheTwoNumberss() {
        result = calculator.divide(num1, num2);
    }

    // When step for power
    @When("I perform power on the two numbers")
    public void whenIPowerTheTwoNumbers() {
        result = calculator.power(num1, num2);
    }

    @Then("the result should be {double}")
    public void thenTheResultShouldBe(double expected) {
        assertEquals(expected, result, 0.0001);  // Use an epsilon for floating-point comparison
    }
}