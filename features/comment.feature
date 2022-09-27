Feature: Comment Page

Scenario: Success add a comment
    Given I am on the comment form
    When I fill the 'content' with 'example content'
    Then I success add a new comment