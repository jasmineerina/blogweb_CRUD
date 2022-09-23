Feature: Post Page

Scenario: Success create post
    Given I am on the new post page
    When I fill the 'title' with "example title"
    And I fill the 'content' with "example content"
    Then I success create post

