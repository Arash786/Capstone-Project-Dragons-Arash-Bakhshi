Feature: Retail Account Page

  Background: 
    Given User is on retail website
    When User click on Sign in option
    And User enter email 'arash.bakhshi55@gmail.com' and password 'Adell@1234'
    And User click on login button
    And User should be logged in into Account
    When User click on Account option

  @updateNameAndPhone
  Scenario: Verify User can update Profile Information
    When User click on Account option
    And User update Name 'araash' and Phone '434-999-8017'
    And User click on Update button
    Then user profile information should be updated

  @changePass
  Scenario: Verify User can Update password
    And User enter below information
      | previousPassword | newPassword | confirmPassword |
      | Adell@1234       | Adell@12345 | Adell@12345     |
    And User click on Change Password button
    Then a message should be displayed Password Updated Successfully

  @payment
  Scenario: Verify User can add a payment method
    And User click on Add a payment method link
    And User fill Debit or credit card information
      | cardNumber       | nameOnCard | expirationMonth | expirationYear | securityCode |
      | 7362853654612233 | Ahmmad     |              12 |           2024 |          656 |
    And User click on Add your Card button
    Then a message should be displayed Payment Method added successfully

  @updateCrad
  Scenario: Verify User can edit Debit or Credit card
    And User select the payment Card
    And User click on Edit option of card section
    And user edit information with below data
      | cardNumber       | nameOnCard | expirationMonth | expirationYear | securityCode |
      | 7362859624958833 | Aaddill    |              12 |           2025 |          499 |
    And user click on Update Your Card button
    Then a message should be displayed Payment Method updated Successfully

  @removeCard
  Scenario: Verify User can remove Debit or Credit card
    And User select the payment Card
    And User click on remove option of card section
    Then payment details should be removed

  @addAddress
  Scenario: Verify User can add an Address
    And User click on Add address option
    And user fill new address form with below information
      | country     | fullName   | phoneNumber | streetAddress | apt  | city    | state | zipCode |
      | Afghanistan | Araash Pjr |  1234560911 | Khairr khanaa | 5800 | Kaabull | Kabul |   76137 |
    And User click on Add Your Address button
    Then a message should be displayed Address Added Successfully

  @EditAddress
  Scenario: Verify User can edit an Address added on account
    And User click on edit address option
    And User fill new address form with below information
      | country     | fullName   | phoneNumber | streetAddress | apt | city   | state | zipCode |
      | Afghanistan | Mohaammadd |  1234567822 | Baharistan    | 459 | kabull | Kabul |   24573 |
    And User click update Your Address button
    Then a message should be displayed Address Updated Successfully

  @removeOldAddress
  Scenario: Verify User can remove Address from Account
    And User click on remove option of Address section
    Then Address details should be removed
