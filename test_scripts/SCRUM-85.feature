Feature: Healthcare Provider Website - User Journeys

  As a potential patient,
  I want to easily navigate the website and understand the healthcare provider's services and values.

  #----------------------------------------------------------------------
  # Website Navigation
  #----------------------------------------------------------------------

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
    Then I should be navigated to the 'Home' page

  #----------------------------------------------------------------------
  # Hero Carousel
  #----------------------------------------------------------------------

  Scenario: Viewing promotional content in the hero carousel
    Given I am on the homepage
    When I view the hero section
    Then I should see a slide with the heading 'Compassionate, Patient-Centered Care'
    When I wait for a few seconds
    Then the slide should change to display a new image
    #Alternative: Clicking the navigation dot also advances the carousel.
    #When I click the navigation dot
    #Then the slide should change to display a new image

  #----------------------------------------------------------------------
  # Value Proposition
  #----------------------------------------------------------------------

  Scenario: Understanding the core principles of the service
    Given I am on the homepage
    When I scroll to the 'No Nonsense' section
    Then I should see an image of a doctor with a patient on the left
    And I should see a list of key philosophies like 'Patient-First Philosophy' and 'Quick, Easy Access to Care' on the right
    When I click the 'Let's connect' button
    Then I should be taken to a contact or scheduling page

  #----------------------------------------------------------------------
  # Service Highlights
  #----------------------------------------------------------------------

  Scenario: Quickly learning about key features
    Given I am on the homepage
    When I see the section with three columns
    Then I should see a distinct highlight for 'Innovation & Technology' with a relevant image and description
    And I should see a distinct highlight for 'Experienced Medical Team' with a relevant image and description
    And I should see a distinct highlight for 'Multiple Locations' with a relevant image and description

  #----------------------------------------------------------------------
  # Inspirational Message
  #----------------------------------------------------------------------

  Scenario: Reading an inspirational quote on the page
    Given I am on the homepage
    When I scroll to the section with a large heart graphic
    Then I should see the quote 'Other people's successes are good news...' displayed prominently
    And I should see its attribution below the quote

  #----------------------------------------------------------------------
  # Core Values
  #----------------------------------------------------------------------

  Scenario: Exploring company values
    Given I am on the homepage
    When I scroll to the 'Key Highlights?' section
    Then I should see a grid of four cards
    And I should see a card representing the core value 'Compassion is at the Core' with a placeholder image and a description
    And I should see a card representing the core value 'Teamwork Drives Us' with a placeholder image and a description
    # Assuming other core values exist, but no specific information was given on them
    And I should see two more cards with their respective titles, placeholder images and descriptions

  #----------------------------------------------------------------------
  # Company Story
  #----------------------------------------------------------------------

  Scenario: Learning about the company's background
    Given I am on the homepage
    When I navigate to the 'Your health. Your voice. Your life.' section
    Then I should see detailed text on the left describing the company's history and mission
    And I should see a supporting graphic with medical icons on the right

  #----------------------------------------------------------------------
  # Website Footer
  #----------------------------------------------------------------------

  Scenario: Finding contact and legal information in the footer
    Given I am at the bottom of any page on the website # Assuming footer is consistent across all pages
    When I view the footer section
    Then I should see three columns of information
    And I should be able to find the main office address
    And I should be able to find the phone number
    And I should be able to find a link to the privacy policy
    And I should be able to find the copyright information