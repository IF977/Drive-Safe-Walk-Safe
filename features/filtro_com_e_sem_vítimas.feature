Feature: filtrar seleção com e sem vitimas 
    Scenario: Successfully filtering results with "Apenas com vítimas" and "Apenas sem vítimas"
      Given I am on the index pages
      When I select "Com e sem vítimas" on the "select_vitimas" filter
      And I click on consultar button
      Then I should see the results of "Com e sem vítimas"