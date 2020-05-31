require_relative '../pages/joto_form_page.rb'

Given(/^user goes to Joto Form Homepage$/) do
  @joto_form_page = JotoFormPage.new(@browser)
  @joto_form_page.go_joto_page
end

When(/^user clicks next button on welcome page$/) do
  @joto_form_page.welcome_next.click
end

Then(/^user on page with file upload$/) do
  expect(@joto_form_page.upload_field.exists?).to be true
end

When(/^user uploads file$/) do
  @joto_form_page.upload_field.set(File.expand_path(File.dirname('test.txt')) + '/features/test-data/test.txt')
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
  @joto_form_page.canvas.click while @joto_form_page.hidden_signature.value.empty?
end

Then(/^there appears hidden element with canvas signed information$/) do
  expect(@joto_form_page.hidden_signature.value.empty?).to be false
end

When(/^user clicks next button on signature upload page$/) do
  @joto_form_page.next_page('7').click
end

Then(/^user on page with phone number and area code fields$/) do
  expect(@joto_form_page.area_code.present?).to be true
  expect(@joto_form_page.phone_number.present?).to be true
end

When(/^user fills data on phone number page and clicks next button$/) do
  @joto_form_page.area_code.send_keys('+48')
  @joto_form_page.phone_number.send_keys('123123123')
  @joto_form_page.next_page('9').click
end

Then(/^user on page with security question field$/) do
  expect(@joto_form_page.security_question_dropdown.present?).to be true
  expect(@joto_form_page.security_answer.present?).to be true
end

When(/^user selects security question and answer and clicks next button$/) do
  @joto_form_page.security_question.select(@joto_form_page.security_question.options[1].value)
  @joto_form_page.security_answer.send_keys('Answer')
  @joto_form_page.next_page('12').click
end

Then(/^user on page with e-mail field$/) do
  expect(@joto_form_page.email.present?).to be true
end

When(/^user fills e-mail field and clicks next button$/) do
  @joto_form_page.email.focus
  @joto_form_page.email.send_keys('example@example.com')
  @joto_form_page.submit.click
end

Then(/^user on "Thank You" page$/) do
  expect(@joto_form_page.thank_you_image.present?).to be true
end
