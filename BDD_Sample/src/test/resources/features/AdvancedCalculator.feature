Feature: OurCalculator - Comprehensive Test Suite

  # Addition Scenarios
  Scenario: Add two positive numbers
    Given Two input numbers, 2 and 3
    When I add the two numbers
    Then the result should be 5

  Scenario: Add two negative numbers
    Given Two input numbers, -2 and -3
    When I add the two numbers
    Then the result should be -5

  Scenario: Add positive and negative numbers
    Given Two input numbers, 5 and -3
    When I add the two numbers
    Then the result should be 2

  Scenario: Add zero to positive number
    Given Two input numbers, 5 and 0
    When I add the two numbers
    Then the result should be 5

  Scenario: Add zero to negative number
    Given Two input numbers, -5 and 0
    When I add the two numbers
    Then the result should be -5

  Scenario: Add two large numbers
    Given Two input numbers, 2147483647 and 1
    When I add the two numbers
    Then an arithmetic exception should be thrown

  # Subtraction Scenarios
  Scenario: Subtract two positive numbers
    Given Two input numbers, 5 and 3
    When I subtract the two numbers
    Then the result should be 2

  Scenario: Subtract two negative numbers
    Given Two input numbers, -5 and -3
    When I subtract the two numbers
    Then the result should be -2

  Scenario: Subtract positive from negative
    Given Two input numbers, -5 and 3
    When I subtract the two numbers
    Then the result should be -8

  Scenario: Subtract negative from positive
    Given Two input numbers, 5 and -3
    When I subtract the two numbers
    Then the result should be 8

  Scenario: Subtract zero
    Given Two input numbers, 5 and 0
    When I subtract the two numbers
    Then the result should be 5

  Scenario: Subtract from zero
    Given Two input numbers, 0 and 5
    When I subtract the two numbers
    Then the result should be -5

  # Multiplication Scenarios
  Scenario: Multiply two positive numbers
    Given Two input numbers, 2 and 3
    When I multiply the two numbers
    Then the result should be 6

  Scenario: Multiply two negative numbers
    Given Two input numbers, -2 and -3
    When I multiply the two numbers
    Then the result should be 6

  Scenario: Multiply positive and negative
    Given Two input numbers, 2 and -3
    When I multiply the two numbers
    Then the result should be -6

  Scenario: Multiply by zero
    Given Two input numbers, 5 and 0
    When I multiply the two numbers
    Then the result should be 0

  Scenario: Multiply zero by negative
    Given Two input numbers, 0 and -5
    When I multiply the two numbers
    Then the result should be 0

  Scenario: Multiply large numbers
    Given Two input numbers, 46341 and 46341
    When I multiply the two numbers
    Then an arithmetic exception should be thrown

  # Division Scenarios
  Scenario: Divide two positive numbers
    Given Two input numbers, 6 and 3
    When I divide the two numbers
    Then the result should be 2

  Scenario: Divide two negative numbers
    Given Two input numbers, -6 and -3
    When I divide the two numbers
    Then the result should be 2

  Scenario: Divide positive by negative
    Given Two input numbers, 6 and -3
    When I divide the two numbers
    Then the result should be -2

  Scenario: Divide negative by positive
    Given Two input numbers, -6 and 3
    When I divide the two numbers
    Then the result should be -2

  Scenario: Divide by one
    Given Two input numbers, 5 and 1
    When I divide the two numbers
    Then the result should be 5

  Scenario: Divide zero by number
    Given Two input numbers, 0 and 5
    When I divide the two numbers
    Then the result should be 0

  Scenario: Divide number by zero
    Given Two input numbers, 5 and 0
    When I divide the two numbers
    Then an arithmetic exception should be thrown

  Scenario: Divide zero by zero
    Given Two input numbers, 0 and 0
    When I divide the two numbers
    Then an arithmetic exception should be thrown

  # Power/Exponentiation Scenarios
  Scenario: Positive number to positive power
    Given Two input numbers, 2 and 3
    When I calculate the power
    Then the result should be 8

  Scenario: Positive number to zero power
    Given Two input numbers, 5 and 0
    When I calculate the power
    Then the result should be 1

  Scenario: Negative number to even power
    Given Two input numbers, -2 and 4
    When I calculate the power
    Then the result should be 16

  Scenario: Negative number to odd power
    Given Two input numbers, -2 and 3
    When I calculate the power
    Then the result should be -8

  Scenario: Number to negative power
    Given Two input numbers, 2 and -3
    When I calculate the power
    Then the result should be 0.125

  Scenario: Zero to positive power
    Given Two input numbers, 0 and 5
    When I calculate the power
    Then the result should be 0

  Scenario: Zero to zero power
    Given Two input numbers, 0 and 0
    When I calculate the power
    Then the result should be 1

  Scenario: One to any power
    Given Two input numbers, 1 and 100
    When I calculate the power
    Then the result should be 1

  Scenario: Large exponent
    Given Two input numbers, 2 and 31
    When I calculate the power
    Then the result should be 2147483648

  # Edge Cases
  Scenario: Maximum integer values
    Given Two input numbers, 2147483647 and -2147483648
    When I add the two numbers
    Then the result should be -1

  Scenario: Identity operations
    Given Two input numbers, 5 and 0
    When I add the two numbers
    Then the result should be 5
    When I subtract the two numbers
    Then the result should be 5
    When I multiply the two numbers
    Then the result should be 0
