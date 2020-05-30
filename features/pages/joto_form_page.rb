class JotoFormPage
  include PageObject

  def welcome_next_button
    @browser.button(id: 'jfCard-welcome-start')
  end

  def first_page_next_button
    @browser.element(xpath: '/html/body/div[5]/form/ul/li[1]/div/div/div[3]/button[2]')
  end

  def other_page_next_button
    @browser.element(xpath: '/html/body/div[5]/form/ul/li[2]/div/div/div[3]/button[2]')
  end

  def li_success
    @browser.element(css: 'li.qq-upload-success')
  end

  def canvas
    @browser.element(css: 'canvas.jSignature')
  end

  def hidden_signature_input
    @browser.input(css: 'input.output4')
  end

  def get_joto_page
    @browser.goto 'https://form.jotform.com/200843963230350'
  end

  def click_next_button
    welcome_next_button.click
    file_field.set(File.expand_path(File.dirname('test.txt')) + '/features/utilities/test.txt')
    li_success.wait_until(&:present?)
    first_page_next_button.click
    canvas.wait_until(&:present?)
    canvas.click
    @browser.wait_while { hidden_signature_input.value.empty? }
    other_page_next_button.click
    sleep(100000)
  end

end