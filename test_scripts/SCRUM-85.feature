Feature: Healthcare Provider Website - User Experience

  Background: Common Setup
    Given I am on the homepage

  @navigation
  Scenario: Accessing different sections of the website
    When I look at the header section at the top of the page
    Then I should see a logo and navigation links for 'Home', 'About', 'Services', and 'Contact'
    When I click on the 'About' link
    Then I should be navigated to the 'About' page
    When I click on the 'Services' link
    Then I should be navigated to the 'Services' page
    When I click on the 'Contact' link
    Then I should be navigated to the 'Contact' page
    When I click on the 'Home' link
    Then I should be navigated to the 'Home' page

  @hero_carousel
  Scenario: Viewing promotional content in the hero carousel
    When I view the hero section
    Then I should see a slide with the heading 'Compassionate, Patient-Centered Care'
    And I should see a descriptive image or graphic for this slide
    When I wait for 5 seconds
    Then the slide should change to display a new image and text
    When I click the navigation dot
    Then the slide should change to display a new image and text

  @value_proposition
  Scenario: Understanding the core principles of the service
    When I scroll to the 'No Nonsense' section
    Then I should see an image of a doctor with a patient on the left
    And I should see a list of key philosophies like 'Patient-First Philosophy' and 'Quick, Easy Access to Care' on the right
    When I click the 'Let's connect' button
    Then I should be taken to the contact or scheduling page

  @service_highlights
  Scenario: Quickly learning about key features
    When I see the section with three columns
    Then I should see distinct highlights for 'Innovation & Technology', 'Experienced Medical Team', and 'Multiple Locations'
    And each highlight should have a relevant image and description
    And the 'Innovation & Technology' highlight should contain content related to modern medical practices
    And the 'Experienced Medical Team' highlight should contain content related to the expertise of the doctors
    And the 'Multiple Locations' highlight should contain information about the different practice locations

  @inspirational_message
  Scenario: Reading an inspirational quote on the page
    When I arrive at the section with a large heart graphic
    Then I should see the quote 'Other people's successes are good news...' displayed prominently
    And I should see its attribution below the quote, stating the author or source

  @core_values
  Scenario: Exploring company values
    When I scroll to the 'Key Highlights?' section
    Then I should see a grid of four cards
    And each card should represent a core value such as 'Compassion is at the Core', 'Teamwork Drives Us', 'Integrity Guides Us' and 'Excellence is our Standard'
    And each card should have a placeholder image and a description that reflects the core value
    And the card representing 'Compassion is at the Core' should emphasize the caring nature of the practice.
    And the card representing 'Teamwork Drives Us' should highlight the collaborative environment.
    And the card representing 'Integrity Guides Us' should demonstrate commitment to ethical practices.
    And the card representing 'Excellence is our Standard' should highlight commitment to quality care.

  @company_story
  Scenario: Learning about the company's background
    When I navigate to the 'Your health. Your voice. Your life.' section
    Then I should see detailed text on the left describing the company's history and mission
    And I should see a supporting graphic with medical icons on the right

  @website_footer
  Scenario: Finding contact and legal information in the footer
    Given I am at the bottom of any page on the website
    When I view the footer section
    Then I should see three columns of information
    And I should see the main office address
    And I should see the phone number
    And I should see a link to the privacy policy
    And I should see the copyright information