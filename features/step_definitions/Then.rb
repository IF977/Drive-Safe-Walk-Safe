Then(/^I should see the results of "([^"]*)"$/) do |opção|
  #page.should have_content(opção)
  expect(page).to have_content opção
end

Then(/^I should see the page recomendações$/) do
  #page.should have_content("Algumas dicas para sua segurança")
  expect(page).to have_content "Algumas dicas para sua segurança"
end


Then(/^I should see the results of "([^"]*)" to "([^"]*)"$/) do |date_start, date_end|
  expect(page).to have_no_content :between => "01/01/1990"..date_start
  expect(page).to have_no_content :between => date_end.."31/12/2099"
end

Then(/^I should see accidentes on the page$/) do
 expect(page).to have_css "table"
end

Then(/^I should see accidentes on the page as a sheet$/) do
  expect(page).to have_css "table"
end

Then(/^I should see the comment window$/) do
  expect(page).to have_css("input#comentario_nome")
end