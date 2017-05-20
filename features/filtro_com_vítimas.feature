Feature: filtrar seleção com vitimas 
    Scenario: Scucessfully filtering results only with "Apenas com vítimas"
      Given I am on the index pages
      When I select "Apenas com vítimas" on the "select_vitimas" filter
      And I click on consultar button
      Then I should see the results of "Apenas com vítimas"