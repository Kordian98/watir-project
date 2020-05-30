require_relative '../pages/joto_form_page.rb'

Given(/^user goes to Joto Form Homepage$/) do
  @joto_form_page = JotoFormPage.new(@browser)
  @joto_form_page.get_joto_page
end

When(/^user clicks next button on welcome page$/) do
  @joto_form_page.welcome_next.click
end

Then(/^user on page with file upload$/) do
  expect(@joto_form_page.upload_field.exists?).to be true
end

When(/^user uploads file$/) do
  @joto_form_page.upload_field.set(File.expand_path(File.dirname('test.txt')) + '/features/utilities/test.txt')
end

Then(/^user sees element with file upload status$/) do
  @joto_form_page.li_success.wait_until(&:present?)
  expect(@joto_form_page.li_success.present?).to be true
end

When(/^user clicks next button on file upload page$/) do
  @joto_form_page.next_page('8').click
end

Then(/^user on page with signature$/) do
  @joto_form_page.canvas.wait_until(&:present?)
  expect(@joto_form_page.canvas.present?).to be true
end

When(/^user signs on canvas$/) do
  @joto_form_page.canvas.click
end

Then(/^there appears hidden element with canvas signed information$/) do
  @browser.wait_while { @joto_form_page.hidden_signature.value.empty? }
  expect(@joto_form_page.hidden_signature.value.empty?).to be false
end

When(/^user clicks next button on signature upload page$/) do
  @joto_form_page.next_page('7').click
end

Then(/^user on page with phone number and area code inputs$/) do
  expect(@joto_form_page.area_code.exists?).to be true
  expect(@joto_form_page.phone_number.exists?).to be true
end

When(/^user fills data on phone number page and clicks next button$/) do
  @joto_form_page.area_code.send_keys('+48')
  @joto_form_page.phone_number.send_keys('123123123')
  @joto_form_page.next_page('9').click
end

Then(/^user on page with security question input$/) do
  expect(@joto_form_page.security_question.exists?).to be true
  expect(@joto_form_page.security_answer.exists?).to be true
end

When(/^user selects security question and answer and clicks next button$/) do
  @joto_form_page.security_question.select(@joto_form_page.security_question.options[1].value)
  @joto_form_page.security_answer.send_keys('Answer')
  @joto_form_page.next_page('12').click
end

Then(/^user on page with e-mail input$/) do
  expect(@joto_form_page.email.exists?).to be true
end

When(/^user fills e-mail input and clicks next button$/) do
  @joto_form_page.email.focus
  @joto_form_page.email.send_keys('example@example.com')
end

Then(/^user on "Thanks You" page$/) do
  expect(true).to be false
end