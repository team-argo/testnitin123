Feature: Compassionate, Patient-Centered Care - Website Functionality and Content

  As a user
  I want to easily navigate the website and understand the organization's values and services
  So that I can make informed decisions about my healthcare

  @websiteNavigation
  Scenario: Website Navigation - Header Links
    Given the user is on any page of the website
    When the user looks at the header section
    Then the user should see a logo
    And the user should see navigation links for 'Home', 'About', 'Services', and 'Contact'

  @websiteNavigation
  Scenario: User navigates to the About page
    Given the user is on the homepage
    When the user clicks on the 'About' link in the navigation bar
    Then the user should be redirected to the 'About Us' page

  @heroSection
  Scenario: Hero Section Display on Homepage
    Given a visitor is on the homepage
    When the page loads
    Then the visitor should see a prominent hero section with the title 'Compassionate, Patient-Centered Care'
    And the visitor should see a background image of a scientist in a lab

  @engagementSection
  Scenario: User wants to learn about the service philosophy
    Given the user is on the homepage
    When the user scrolls to the engagement section
    Then the user should see an image of a doctor with a patient
    And the user should see a list of principles like 'Patient-First Philosophy' and 'Quick, Easy Access to Care'

  @engagementSection
  Scenario: User navigates to Contact Us page from Engagement Section
    Given the user is viewing the engagement section
    When the user clicks the 'Let's connect' button
    Then the user should be redirected to the Contact Us page

  @coreServicesOverview
  Scenario: User wants to see a summary of key offerings
    Given the user is on the homepage
    When the user scrolls down the page
    Then the user should see a three-column section highlighting 'Innovation & Technology', 'Experienced Medical Team', and 'Multiple Locations'
    And each section should have a relevant image and description

  @inspirationalQuote
  Scenario: User sees Inspirational Quote
    Given the user is scrolling through the homepage
    When the user reaches the quote section
    Then the user should see a large graphic of hands holding a heart
    And the user should see the quote '"Other people's successes are good news..."' with its attribution

  @keyHighlightsSection
  Scenario: User wants to understand the core values
    Given the user is on the homepage
    When the user scrolls to the 'Key Highlights?' section
    Then the user should see a four-column layout with cards for 'Compassion is at the Core', 'Patients are Partners', 'Innovation is Encouraged', and 'Teamwork Drives Us'

  @valueProposition
  Scenario: User wants to read more about the organization's mission
    Given the user is on the homepage
    When the user scrolls to the 'Your health. Your voice. Your life.' section
    Then the user should see a detailed text description on the left
    And the user should see a corresponding graphic with medical icons on the right

  @websiteFooter
  Scenario: User needs to find contact or legal information
    Given the user is at the bottom of any page
    When the user views the footer
    Then the user should see a column containing 'Main Office' contact details
    And the user should see a 'Follow Us' social media notice
    And the user should see legal links such as 'Privacy' and 'Terms of Use'