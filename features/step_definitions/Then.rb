Then(/^I should see the results of "([^"]*)"$/) do |opção|
  page.should have_content(opção)
end

Then(/^I should see the page recomendações$/) do
  page.should have_content("Algumas dicas para sua segurança")
end