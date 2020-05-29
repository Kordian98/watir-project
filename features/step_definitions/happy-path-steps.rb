require_relative '../pages/joto_form_page.rb'

Given(/^a user goes to Joto Form Homepage$/) do
  @amazon_page = SearchPage.new(@browser)
  @amazon_page.visit_amazon_site
end