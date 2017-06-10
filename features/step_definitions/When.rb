When(/^I select "([^"]*)" on the "([^"]*)" filter$/) do |opção, select_vitimas|
    page.select "com", :from => "select_vitimas"
end

When(/^I click on consultar button$/) do
  click_button("Consultar")
end

When(/^I click on recomendações link$/) do
    click_link('Recomendações')
end

When(/^I select "([^"]*)" on the input_date_start_date_start filter$/) do |date_start|
  fill_in 'input_date_start_date_start', with: date_start 
end

When(/^I select "([^"]*)" on the input_date_start_date_end filter$/) do |date_end|
  fill_in 'input_date_start_date_end', with: date_end
end
