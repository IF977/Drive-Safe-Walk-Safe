Feature: filtrar seleção sem vitimas 
    Scenario: Scucessfully filtering results only sem vitimas
      Given I am on the index pages
      When I select "Apenas sem vítimas" on the "select_vitimas" filter
      And I click on consultar button
      Then I should see the results of "Apenas sem vítimas"