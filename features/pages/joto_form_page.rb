class JotoFormPage
  include PageObject

  def get_joto_page
    @browser.goto 'https://form.jotform.com/200843963230350'
  end

end