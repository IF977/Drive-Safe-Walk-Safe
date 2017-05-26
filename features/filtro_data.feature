Feature: filtrar data dos acidentes
    Scenario: Scucessfully filtering results for selected dates
      Given I am on the index pages
      When I select "date_start" on the input_date_start_date_start filter
      When I select "date_end" on the input_date_start_date_end filter
      And I click on consultar button
      Then I should see the results of "1/1/2000" to "1/1/2018"