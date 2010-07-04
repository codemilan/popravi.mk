Feature: Manage problems
    In order to validate problems information
    As a site administrator
    I want to manage problems

    Scenario: Manage problems
        Given I am authenticated as admin
            And I am on the admin page
            And there are no problems
            And category exists
            And municipality exists
        When I follow "Problems"
        Then I should see "No problems have been added yet"
        When I follow "New Problem"
            And I fill in "Subject" with "Problem subject"
            And I fill in "Description" with "Problem description"
            And I attach the file "public/images/rails.png" to "Photo"
            And I fill in "Latitude" with "42"
            And I fill in "Longitude" with "21"
            And I fill in "Name" with "Test User"
            And I fill in "Email" with "test_user@popravi.mk"
            And I select "Abandoned vehicles" from "Category"
            And I select "Butel" from "Municipality"
            And I press "Create"
        Then I should see "Problem was successfully created"
            And I should see "Problem subject"
        When I follow "Edit"
          And I fill in "Subject" with "Problem subject 2"
          And I press "Update"
        Then I should see "Problem was successfully updated"
            And I should see "Problem subject 2"
