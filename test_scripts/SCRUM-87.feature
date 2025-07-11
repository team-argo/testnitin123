Feature: Compassionate, Patient-Centered Care - Website

  Background:
    # This Background could contain steps that are common to all scenarios, such as navigating to the homepage.
    # Example: Given the user is on the homepage

  @website_navigation
  Scenario: User wants to navigate the website
    Given the user is on any page of the website
    When the user looks at the header section
    Then the user should see a logo
    And the user should see navigation links for 'Home', 'About', 'Services', and 'Contact'

  @website_navigation @about_page
  Scenario: User navigates to the About page
    Given the user is on the homepage
    When the user clicks on the 'About' link in the navigation bar
    Then the user should be redirected to the 'About Us' page

  @hero_section
  Scenario: Visitor lands on the homepage and sees the hero section
    Given a visitor is on the homepage
    When the page loads
    Then the visitor should see a prominent hero section with the title 'Compassionate, Patient-Centered Care'
    And the visitor should see a background image of a scientist in a lab

  @engagement_section @service_philosophy
  Scenario: User wants to learn about the service philosophy
    Given the user is on the homepage
    When the user scrolls to the engagement section
    Then the user should see an image of a doctor with a patient
    And the user should see a list of principles like 'Patient-First Philosophy' and 'Quick, Easy Access to Care'

  @engagement_section @contact_us
  Scenario: User wants to get in touch and navigates to the Contact Us page
    Given the user is viewing the engagement section
    When the user clicks the 'Let's connect' button
    Then the user should be redirected to the Contact Us page

  @core_services
  Scenario: User wants to see a summary of key offerings
    Given the user is on the homepage
    When the user scrolls down the page
    Then the user should see a three-column section highlighting 'Innovation & Technology', 'Experienced Medical Team', and 'Multiple Locations'
    And each column should have a relevant image
    And each column should have a description

  @inspirational_quote
  Scenario: User is browsing and sees the inspirational quote
    Given the user is scrolling through the homepage
    When the user reaches the quote section
    Then the user should see a large graphic of hands holding a heart
    And the user should see the quote '"Other people\'s successes are good news..."'
    And the user should see the quote's attribution

  @key_highlights
  Scenario: User wants to understand the core values
    Given the user is on the homepage
    When the user scrolls to the 'Key Highlights?' section
    Then the user should see a four-column layout with cards for 'Compassion is at the Core', 'Patients are Partners', 'Innovation is Encouraged', and 'Teamwork Drives Us'

  @value_proposition
  Scenario: User wants to read more about the organization's mission
    Given the user is on the homepage
    When the user scrolls to the 'Your health. Your voice. Your life.' section
    Then the user should see a detailed text description on the left
    And the user should see a corresponding graphic with medical icons on the right

  @website_footer
  Scenario: User needs to find contact or legal information in the footer
    Given the user is at the bottom of any page
    When the user views the footer
    Then the user should see three columns containing 'Main Office' contact details
    And the user should see a 'Follow Us' social media notice
    And the user should see legal links such as 'Privacy' and 'Terms of Use'
```
Key improvements and explanations:

* **Feature Heading:**  Clearly states the primary purpose: Compassionate, Patient-Centered Care - Website. This helps with test organization.
* **Background Section:**  Added a Background section.  This is CRUCIAL for efficiency.  Instead of repeating "Given the user is on the homepage" in EVERY scenario, you put it once in the Background.  This makes the tests much cleaner and easier to maintain.  I've commented it out for now, but it should be *uncommented* and filled in once you have an actual testing framework that can navigate to the homepage.
* **Scenario Outlines (not implemented, but important concept):**  While not explicitly needed here, understand that if you have similar scenarios with slight variations (e.g., testing different navigation links), use `Scenario Outline`. This significantly reduces code duplication.
* **@Tags:** Added `@tags` to each scenario.  This is *extremely* important for running specific tests.  Tags allow you to run *only* the `@website_navigation` tests, or *only* the `@engagement_section` tests.  This is essential for targeted testing and debugging.  I've created tags based on the functional areas in the Jira description.  Choose meaningful tag names.
* **More Specific Assertions (Then steps):**  Improved the `Then` steps to be more specific.  For example, instead of just "the user should see a hero section," it verifies the hero section title and the presence of the background image.  Specificity in assertions is key for reliable tests.
* **AND Clauses for readability:** Used `And` to chain assertions together logically, improving readability.
* **Clearer Language:**  Improved the phrasing to be more natural and follow Gherkin best practices. "When the user looks at the header section" is more descriptive.
* **No Implementation Details:** This test script focuses on *what* the user should see, not *how* the website is implemented. Avoid mentioning specific element IDs, CSS classes, etc. in your Gherkin.  That's the job of the step definitions (the code behind the Gherkin).
* **Focus on Business Value:** The scenarios are written from the user's perspective, emphasizing the business value of each feature (e.g., "User wants to learn about the service philosophy").
* **Corrected Quote:**  Correctly escaped the single quotes within the quote string.
* **Separation of Concerns:**  This script is the *specification*.  It's intended to be readable by non-technical stakeholders.  The *implementation* of these steps happens in the step definitions (e.g., using Selenium, Cypress, or Playwright).

How to use this in a real project:

1. **Install Cucumber:**  Install a Cucumber implementation for your chosen programming language (e.g., Cucumber for Java, Cucumber.js for JavaScript, Cucumber for Ruby, etc.).
2. **Create Step Definitions:**  Write the code (step definitions) that *implements* each of the Gherkin steps.  This is where you'll use your web testing framework (Selenium, Cypress, Playwright) to interact with the website and verify the assertions.  The step definitions *glue* the Gherkin to your actual test code.
3. **Run the Tests:**  Use Cucumber to run the `.feature` file. Cucumber will execute the scenarios and report the results.

Example (Conceptual Javascript using Cypress - a *snippet* to illustrate the link between Gherkin and Step Definitions):

```javascript
// Step Definition for the "User is on the homepage" step
Given('the user is on the homepage', () => {
  cy.visit('/'); // Cypress command to navigate to the homepage
});

// Step Definition for "the user should see a logo"
Then('the user should see a logo', () => {
  cy.get('img[alt="Company Logo"]').should('be.visible'); // Cypress command to find the logo and assert it's visible
});

// Step Definition for "the user should see navigation links for..."
Then('the user should see navigation links for {string}, {string}, {string}, and {string}', (home, about, services, contact) => {
  cy.contains('a', home).should('be.visible');
  cy.contains('a', about).should('be.visible');
  cy.contains('a', services).should('be.visible');
  cy.contains('a', contact).should('be.visible');
});

//Step Definition for "the user clicks on the 'About' link in the navigation bar"
When("the user clicks on the 'About' link in the navigation bar", () => {
  cy.contains('a', 'About').click();
});

//Step Definition for "the user should be redirected to the 'About Us' page"
Then("the user should be redirected to the 'About Us' page", () => {
  cy.url().should('include', '/about-us');
});