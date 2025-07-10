Feature: Healthcare Provider Website - User Journeys

  Background:  Website Setup
    Given the Healthcare Provider website is accessible

  @WebsiteNavigation
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

  @HeroCarousel
  Scenario: Viewing promotional content in the Hero Carousel
    Given I am on the homepage
    When I view the hero section
    Then I should see a slide with the heading 'Compassionate, Patient-Centered Care'
    And I should see an image related to healthcare on the slide
    When I wait for a few seconds
    Then the slide should change to display a new image
    # Alternative: Click navigation dot (if available)
    # When I click the hero carousel navigation dot
    # Then the slide should change to display a new image

  @ValueProposition
  Scenario: Understanding the core value proposition
    Given I am browsing the page
    When I scroll to the 'No Nonsense' section
    Then I should see an image of a doctor with a patient on the left
    And I should see a list of key philosophies on the right
    And the key philosophies should include 'Patient-First Philosophy'
    And the key philosophies should include 'Quick, Easy Access to Care'
    When I click the 'Let's connect' button
    Then I should be taken to a contact or scheduling page

  @ServiceHighlights
  Scenario: Quickly learning about key service highlights
    Given I am on the homepage
    When I see the section with three columns
    Then I should see distinct highlights for 'Innovation & Technology'
    And I should see a relevant image and description for 'Innovation & Technology'
    And I should see distinct highlights for 'Experienced Medical Team'
    And I should see a relevant image and description for 'Experienced Medical Team'
    And I should see distinct highlights for 'Multiple Locations'
    And I should see a relevant image and description for 'Multiple Locations'

  @InspirationalMessage
  Scenario: Reading the inspirational quote
    Given I am scrolling through the website
    When I arrive at the section with a large heart graphic
    Then I should see the quote 'Other people's successes are good news...' displayed prominently
    And I should see its attribution below the quote

  @CoreValues
  Scenario: Exploring company core values
    Given I am on the webpage
    When I scroll to the 'Key Highlights?' section
    Then I should see a grid of four cards
    And each card should represent a core value
    And the cards should include 'Compassion is at the Core'
    And the cards should include 'Teamwork Drives Us'
    And each card should have a placeholder image and a description

  @CompanyStory
  Scenario: Learning about the company's history and mission
    Given I am on the website
    When I navigate to the 'Your health. Your voice. Your life.' section
    Then I should see detailed text on the left describing the company's history and mission
    And I should see a supporting graphic with medical icons on the right

  @WebsiteFooter
  Scenario: Finding contact and legal information in the footer
    Given I am at the bottom of any page on the website
    When I view the footer section
    Then I should see three columns of information
    And I should be able to find the main office address
    And I should be able to find the phone number
    And I should be able to find a link to the privacy policy
    And I should be able to find the copyright information