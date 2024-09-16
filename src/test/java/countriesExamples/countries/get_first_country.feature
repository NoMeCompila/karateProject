Feature: print one country

  @single-country
  Scenario: Get the first country
    Given url 'https://restcountries.com/v3.1/all'
    When method get
    Then status 200
    And print response[0]