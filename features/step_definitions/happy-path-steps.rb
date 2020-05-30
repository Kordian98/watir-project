require_relative '../pages/joto_form_page.rb'

Given(/^a user goes to Joto Form Homepage$/) do
  @joto_form_page = JotoFormPage.new(@browser)
  @joto_form_page.get_joto_page
  @joto_form_page.click_next_button
end