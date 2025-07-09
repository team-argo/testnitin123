Feature: [Descriptive name of the feature being tested - usually derived from the Jira Issue Summary. Be concise!]
  As a [Who? - The user role or persona - derived from the user story]
  I want to [What? - The goal they want to achieve - derived from the user story]
  So that [Why? - The benefit or reason for the goal - derived from the user story]

  @tag  # Optional: Add a tag to group related scenarios (e.g., @regression, @priority_high)
  Scenario: [Descriptive name for the specific scenario - be specific and concise!]
    Given [Initial context/setup. What must be true *before* the action?  Use clear and specific language. Include any preconditions described in the Jira description.]
    And [Additional initial context, if necessary]
    When [The action or event that occurs.  What is the user doing? What system event is triggered?]
    Then [The expected outcome or result. What should happen *after* the action?  Be specific and verifiable.]
    And [Additional expected outcome, if necessary]

  @tag
  Scenario Outline: [Use for scenarios with varying data.  Describe the scenario in general terms.]
    Given [Initial context with placeholders for data.  Use <variable> syntax.]
    When [The action that uses the data.]
    Then [The expected outcome using the data.]

    Examples:
      | <Variable1> | <Variable2> | <ExpectedResult> |  # Define the column headers (variables)
      | Value1     | Value2     | Expected1      |  # Data rows for each test case
      | Value3     | Value4     | Expected2      |
      | ...        | ...        | ...           |
```

**Example 1: Jira Issue for a Simple Login**

*   **Issue Type:** Task
*   **Summary:** Implement User Login Functionality
*   **Description:**  Users should be able to log in with a valid username and password.  The system should display an error message for invalid credentials.  Passwords are case-sensitive.  Successful login redirects the user to the dashboard.

**Gherkin Script for Example 1:**

```gherkin
Feature: User Login

  As a registered user
  I want to log in to the system
  So that I can access my dashboard

  @login @smoke
  Scenario: Successful Login with Valid Credentials
    Given I am on the login page
    When I enter my username "valid_user"
    And I enter my password "CorrectPassword"
    And I click the "Login" button
    Then I should be redirected to the dashboard

  @login @negative
  Scenario: Unsuccessful Login with Invalid Credentials
    Given I am on the login page
    When I enter my username "invalid_user"
    And I enter my password "WrongPassword"
    And I click the "Login" button
    Then I should see an error message "Invalid username or password"

  @login @negative
  Scenario: Unsuccessful Login with Correct Username and Incorrect Case Sensitive Password
    Given I am on the login page
    When I enter my username "valid_user"
    And I enter my password "correctpassword"
    And I click the "Login" button
    Then I should see an error message "Invalid username or password"

  @login @negative
  Scenario: Unsuccessful Login with Empty Username and Password
    Given I am on the login page
    When I enter my username ""
    And I enter my password ""
    And I click the "Login" button
    Then I should see an error message "Username and password are required"
```

**Example 2: Jira Issue for Searching Products**

*   **Issue Type:** Task
*   **Summary:** Implement Product Search Functionality
*   **Description:**  Users should be able to search for products by keyword. The search results should display the product name, price, and a short description. If no products match the search criteria, a "No products found" message should be displayed.

**Gherkin Script for Example 2:**

```gherkin
Feature: Product Search

  As a user
  I want to search for products
  So that I can find the products I need

  @search @regression
  Scenario: Successful Product Search with Matching Keywords
    Given I am on the product search page
    When I enter "Laptop" in the search field
    And I click the "Search" button
    Then I should see a list of products containing "Laptop" in their name or description
    And each product should display its name, price, and description

  @search @negative
  Scenario: Product Search with No Matching Keywords
    Given I am on the product search page
    When I enter "Unicorn" in the search field
    And I click the "Search" button
    Then I should see the message "No products found"

  @search @edge
  Scenario: Product Search with Empty Search Field
    Given I am on the product search page
    When I enter "" in the search field
    And I click the "Search" button
    Then I should see a list of all available products # Or an appropriate message if this isn't expected.

  @search @regression
  Scenario Outline: Product Search using Search terms
    Given I am on the product search page
    When I enter "<searchTerm>" in the search field
    And I click the "Search" button
    Then I should see results that match "<searchTerm>"

    Examples:
      | searchTerm |
      | mobile    |
      | tablet    |
      | charger   |