Feature: Compassionate, Patient-Centered Care Website

  As a user
  I want to navigate and understand the website content
  So that I can learn about the organization's compassionate, patient-centered approach

  Scenario: Website Navigation - Header Links
    Given the user is on any page of the website
    When the user looks at the header section
    Then the user should see a logo
    And the user should see a navigation link for "Home"
    And the user should see a navigation link for "About"
    And the user should see a navigation link for "Services"
    And the user should see a navigation link for "Contact"

  Scenario: Website Navigation - About Page
    Given the user is on the homepage
    When the user clicks on the "About" link in the navigation bar
    Then the user should be redirected to the "About Us" page

  Scenario: Hero Section Display
    Given a visitor is on the homepage
    When the page loads
    Then the visitor should see a prominent hero section with the title "Compassionate, Patient-Centered Care"
    And the visitor should see a background image of a scientist in a lab

  Scenario: Engagement Section - Service Philosophy
    Given the user is on the homepage
    When the user scrolls to the engagement section
    Then the user should see an image of a doctor with a patient
    And the user should see a list of principles including "Patient-First Philosophy"
    And the user should see a list of principles including "Quick, Easy Access to Care"

  Scenario: Engagement Section - Contact Us Redirection
    Given the user is viewing the engagement section
    When the user clicks the "Let's connect" button
    Then the user should be redirected to the Contact Us page

  Scenario: Core Services Overview
    Given the user is on the homepage
    When the user scrolls down the page
    Then the user should see a three-column section highlighting "Innovation & Technology" with a relevant image and description
    And the user should see a three-column section highlighting "Experienced Medical Team" with a relevant image and description
    And the user should see a three-column section highlighting "Multiple Locations" with a relevant image and description

  Scenario: Inspirational Quote Display
    Given the user is scrolling through the homepage
    When the user reaches the quote section
    Then the user should see a large graphic of hands holding a heart
    And the user should see the quote '"Other people's successes are good news..."' with its attribution

  Scenario: Key Highlights Section
    Given the user is on the homepage
    When the user scrolls to the "Key Highlights?" section
    Then the user should see a four-column layout with a card for "Compassion is at the Core"
    And the user should see a four-column layout with a card for "Patients are Partners"
    And the user should see a four-column layout with a card for "Innovation is Encouraged"
    And the user should see a four-column layout with a card for "Teamwork Drives Us"

  Scenario: Detailed Value Proposition
    Given the user is on the homepage
    When the user scrolls to the "Your health. Your voice. Your life." section
    Then the user should see a detailed text description on the left
    And the user should see a corresponding graphic with medical icons on the right

  Scenario: Website Footer Information
    Given the user is at the bottom of any page
    When the user views the footer
    Then the user should see a column containing "Main Office" contact details
    And the user should see a column containing a "Follow Us" social media notice
    And the user should see a column containing legal links such as "Privacy"
    And the user should see a column containing legal links such as "Terms of Use"