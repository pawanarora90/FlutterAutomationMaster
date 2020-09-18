Feature: AddFeature
  Test add features


  Scenario: Test Plus feature of the app
    Given I test the initial state of the app
    And I click the plus button
    Then I see if the value is "1"

  Scenario: Test Subtract feature of the app
    Given I test the initial state of the app with value as
    And I click the plus button
    And I click the plus button
    And I click subtract button
    Then I see if the value is "1"

  Scenario: Test Subtract only
    Given I test the initial state of the app
    And I click subtract button
    And I click subtract button
    Then I see if the value is "-2"

  Scenario: Test alert box
    Given I test the initial state of the app
    And I click on alert button
    Then I see alert message box