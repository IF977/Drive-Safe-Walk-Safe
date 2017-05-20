When(/^I select "([^"]*)" on the "([^"]*)" filter$/) do |opção, select_vitimas|
    page.select "com", :from => "select_vitimas"
end

When(/^I click on consultar button$/) do
  click_button("Consultar")
end

When(/^I click on recomendações link$/) do
    click_link('Recomendações')
end