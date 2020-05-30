class JotoFormPage
  include PageObject

  def get_joto_page
    @browser.goto 'https://form.jotform.com/200843963230350'
  end

  def welcome_next
    @browser.button(id: 'jfCard-welcome-start')
  end

  def next_page(cid_number)
    @browser.button(css: "#cid_#{cid_number} > div > div.jfCard-actions > button.jfInput-button.forNext.u-right")
  end

  def submit
    @browser.button(css: 'button.jfInput-button.forSubmit.form-submit-button.u-right')
  end

  def upload_field
    @browser.file_field(id: 'input_8')
  end

  def li_success
    @browser.element(css: 'li.qq-upload-success')
  end

  def canvas
    @browser.element(css: 'canvas.jSignature')
  end

  def hidden_signature
    @browser.input(css: 'input.output4')
  end

  def area_code
    @browser.input(id: 'input_9_area')
  end

  def phone_number
    @browser.input(id: 'input_9_phone')
  end

  def security_question
    @browser.select_list(id: 'input_12_field_1')
  end

  def security_answer
    @browser.input(id: 'input_12_field_2')
  end

  def email
    @browser.input(id: 'input_11')
  end
end