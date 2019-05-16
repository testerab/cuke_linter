Feature: Scenario without description linter

  As a writer of documentation
  I want scenarios to have at a description
  So that I do not have incomplete documentation


  Scenario: Linting
    Given a linter for scenarios without a description
    And the following feature:
      """
      Feature: Scenarios must have a description
      """
    When it is linted
    Then an error is reported
      | linter                                   | problem                     | location         |
      | FeatureOrScenarioWihoutDescriptionLinter | Scenario has no description | <path_to_file>:1 |
