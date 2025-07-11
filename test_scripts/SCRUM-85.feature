Feature: Healthcare Provider Website - User Interface and Navigation

  Background:
    Given I am on the homepage

  @website_navigation
  Scenario: Accessing different sections of the website
    When I look at the header section at the top of the page
    Then I should see a logo and navigation links for 'Home', 'About', 'Services', and 'Contact'
    When I click on the 'Home' link
    Then I should be navigated to the homepage
    When I click on the 'About' link
    Then I should be navigated to the 'About' page
    When I click on the 'Services' link
    Then I should be navigated to the 'Services' page
    When I click on the 'Contact' link
    Then I should be navigated to the 'Contact' page

  @hero_carousel
  Scenario: Viewing promotional content
    When I view the hero section
    Then I should see a slide with the heading 'Compassionate, Patient-Centered Care'
    And I should see a supporting image for 'Compassionate, Patient-Centered Care'
    When I wait for 5 seconds
    Then the slide should change to display a new image and content
    When I click the navigation dot
    Then the slide should change to display a new image and content

  @value_proposition
  Scenario: Understanding the core principles of the service
    When I scroll to the 'No Nonsense' section
    Then I should see an image of a doctor with a patient on the left
    And I should see a list of key philosophies like 'Patient-First Philosophy' and 'Quick, Easy Access to Care' on the right
    When I click the 'Let's connect' button
    Then I should be taken to a contact or scheduling page

  @service_highlights
  Scenario: Quickly learning about key features
    When I see the section with three columns
    Then I should see a distinct highlight for 'Innovation & Technology' with a relevant image and description
    And I should see a distinct highlight for 'Experienced Medical Team' with a relevant image and description
    And I should see a distinct highlight for 'Multiple Locations' with a relevant image and description

  @inspirational_message
  Scenario: Reading a quote on the page
    When I scroll to the section with a large heart graphic
    Then I should see the quote 'Other people's successes are good news...' displayed prominently
    And I should see its attribution below the quote

  @core_values
  Scenario: Exploring company values
    When I scroll to the 'Key Highlights?' section
    Then I should see a grid of four cards
    And the first card should represent the core value 'Compassion is at the Core' with a placeholder image and a description
    And the second card should represent a core value such as 'Teamwork Drives Us' with a placeholder image and a description
    And the third card should represent a core value with a placeholder image and a description
    And the fourth card should represent a core value with a placeholder image and a description

  @company_story
  Scenario: Learning about the company's background
    When I navigate to the 'Your health. Your voice. Your life.' section
    Then I should see detailed text on the left describing the company's history and mission
    And I should see a supporting graphic with medical icons on the right

  @website_footer
  Scenario: Finding contact and legal information
    Given I am at the bottom of any page on the website
    When I view the footer section
    Then I should see three columns of information
    And I should be able to find the main office address in the footer
    And I should be able to find the phone number in the footer
    And I should be able to find a link to the privacy policy in the footer
    And I should be able to find the copyright information in the footer