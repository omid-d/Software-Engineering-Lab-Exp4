package stepdefs;

import calculator.Calculator;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.junit.Before;

public class MyStepdefs {
    private Calculator calculator;
    private int value1;
    private int value2;
    private int result;

    @Before
    public void before() {
        calculator = new Calculator();
    }

    @Given("Two input values, {int} and {int}")
    public void twoInputValuesAnd(int arg0, int arg1) {
        value1 = arg0;
        value2 = arg1;
    }
    @When("I add the two values")
    public void iAddTheTwoValues() {
        calculator = new Calculator();
        result = calculator.add(value1, value2);
        System.out.println(result);
    }
    @Then("I expect the result {int}")
    public void iExpectTheResult(int arg0) {
        Assert.assertEquals(arg0, result);
    }
}