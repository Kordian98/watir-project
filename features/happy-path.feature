Feature: Joto Form Filling

  Scenario: Simple happy path
    Given user goes to Joto Form Homepage
    When user clicks next button on welcome page
    Then user on page with file upload
    When user uploads file
    Then user sees element with file upload status
    When user clicks next button on file upload page
    Then user on page with signature
    When user signs on canvas
    Then there appears hidden element with canvas signed information
    When user clicks next button on signature upload page
    Then user on page with phone number and area code fields
    When user fills data on phone number page and clicks next button
    Then user on page with security question field
    When user selects security question and answer and clicks next button
    Then user on page with e-mail field
    When user fills e-mail field and clicks next button
    Then user on "Thank You" page