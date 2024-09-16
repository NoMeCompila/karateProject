Feature: Get all countriesExamples

  @countriesExamples
  Scenario: list of countriesExamples
    Given url 'https://restcountries.com/v3.1/all'
    When method get
    Then status 200
      And print response