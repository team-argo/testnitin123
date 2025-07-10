Feature: Healthcare Provider Website - User Interface and Navigation

  Background:
    Given I have navigated to the healthcare provider website

  @navigation
  Scenario: Accessing different sections of the website
    Given I am on the homepage
    When I look at the header section at the top of the page
    Then I should see a logo
    And I should see navigation links for 'Home', 'About', 'Services', and 'Contact'
    When I click on the 'About' link
    Then I should be navigated to the About page
    When I click on the 'Services' link
    Then I should be navigated to the Services page
    When I click on the 'Contact' link
    Then I should be navigated to the Contact page
    When I click on the 'Home' link
    Then I should be navigated to the homepage

  @hero_carousel
  Scenario: Viewing promotional content in the Hero Carousel
    Given I am on the homepage
    When I view the hero section
    Then I should see a slide with the heading 'Compassionate, Patient-Centered Care'
    And I should see a descriptive image or video
    When I wait for a few seconds
    Then the slide should automatically change to display a new image and content
    When I click the navigation dot
    Then the slide should change to display a new image and content

  @value_proposition
  Scenario: Understanding the core service principles
    Given I am on the homepage
    When I scroll to the 'No Nonsense' section
    Then I should see an image of a doctor with a patient on the left
    And I should see a list of key philosophies on the right
    And the list should include 'Patient-First Philosophy'
    And the list should include 'Quick, Easy Access to Care'
    When I click the 'Let's connect' button
    Then I should be taken to a contact or scheduling page

  @service_highlights
  Scenario: Quickly learning about key features
    Given I am on the homepage
    When I see the section with three columns
    Then I should see a distinct highlight for 'Innovation & Technology'
    And I should see a relevant image and description for 'Innovation & Technology'
    Then I should see a distinct highlight for 'Experienced Medical Team'
    And I should see a relevant image and description for 'Experienced Medical Team'
    Then I should see a distinct highlight for 'Multiple Locations'
    And I should see a relevant image and description for 'Multiple Locations'

  @inspirational_message
  Scenario: Reading an inspirational quote on the page
    Given I am scrolling through the website
    When I arrive at the section with a large heart graphic
    Then I should see the quote 'Other people's successes are good news...' displayed prominently
    And I should see its attribution below the quote

  @core_values
  Scenario: Exploring company values
    Given I am on the webpage
    When I scroll to the 'Key Highlights?' section
    Then I should see a grid of four cards
    And I should see a card representing 'Compassion is at the Core' with a placeholder image and a description
    And I should see a card representing 'Teamwork Drives Us' with a placeholder image and a description
    And I should see 2 other cards representing core values with placeholder images and descriptions

  @company_story
  Scenario: Learning about the company's background
    Given I am on the website
    When I navigate to the 'Your health. Your voice. Your life.' section
    Then I should see detailed text on the left describing the company's history and mission
    And I should see a supporting graphic with medical icons on the right

  @website_footer
  Scenario: Finding contact and legal information in the footer
    Given I am at the bottom of any page on the website
    When I view the footer section
    Then I should see three columns of information
    And I should be able to find the main office address
    And I should be able to find the phone number
    And I should be able to find the privacy policy link
    And I should be able to find the copyright information