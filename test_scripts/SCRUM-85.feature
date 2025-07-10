Feature: Healthcare Provider Website Functionality

  As a user,
  I want to be able to navigate the healthcare provider's website and understand its key features and values,
  So I can easily access information and services.

  @smoke @navigation
  Scenario: Accessing different sections of the website
    Given I am on the homepage
    When I look at the header section at the top of the page
    Then I should see a logo
    And I should see navigation links for 'Home', 'About', 'Services', and 'Contact'
    When I click on the 'About' link
    Then I should be navigated to the 'About' page
    When I click on the 'Services' link
    Then I should be navigated to the 'Services' page
    When I click on the 'Contact' link
    Then I should be navigated to the 'Contact' page
    When I click on the 'Home' link
    Then I should be navigated to the homepage

  @smoke @hero_carousel
  Scenario: Viewing promotional content in the Hero Carousel
    Given I am on the homepage
    When I view the hero section
    Then I should see a slide with the heading 'Compassionate, Patient-Centered Care'
    And I should see a short description related to the heading
    When I wait for 5 seconds
    Then the slide should change to display a new image and heading
    #Optional: Add verification for other slides if you have known content.

  @value_proposition
  Scenario: Understanding the value proposition of the service
    Given I am browsing the page
    When I scroll to the 'No Nonsense' section
    Then I should see an image of a doctor with a patient on the left
    And I should see a list of key philosophies like 'Patient-First Philosophy' and 'Quick, Easy Access to Care' on the right
    When I click the 'Let's connect' button
    Then I should be taken to a contact or scheduling page

  @service_highlights
  Scenario: Quickly learning about key service highlights
    Given I am on the homepage
    When I see the section with three columns
    Then I should see a distinct highlight for 'Innovation & Technology'
    And I should see a relevant image and description for 'Innovation & Technology'
    And I should see a distinct highlight for 'Experienced Medical Team'
    And I should see a relevant image and description for 'Experienced Medical Team'
    And I should see a distinct highlight for 'Multiple Locations'
    And I should see a relevant image and description for 'Multiple Locations'

  @inspirational_message
  Scenario: Reading the inspirational message on the page
    Given I am scrolling through the website
    When I arrive at the section with a large heart graphic
    Then I should see the quote 'Other people's successes are good news...' displayed prominently
    And I should see its attribution below the quote

  @core_values
  Scenario: Exploring the company's core values
    Given I am on the webpage
    When I scroll to the 'Key Highlights?' section
    Then I should see a grid of four cards
    And I should see a card representing 'Compassion is at the Core' with a placeholder image and a description
    And I should see a card representing 'Teamwork Drives Us' with a placeholder image and a description
    #Add verification for the remaining two core value cards.

  @company_story
  Scenario: Learning about the company's background and mission
    Given I am on the website
    When I navigate to the 'Your health. Your voice. Your life.' section
    Then I should see detailed text on the left describing the company's history and mission
    And I should see a supporting graphic with medical icons on the right

  @website_footer
  Scenario: Finding contact and legal information in the website footer
    Given I am at the bottom of any page on the website
    When I view the footer section
    Then I should see three columns of information
    And I should be able to find the main office address
    And I should be able to find the phone number
    And I should be able to find the privacy policy link
    And I should be able to find the copyright information