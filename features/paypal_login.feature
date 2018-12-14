
Feature: Sign Up functionality


Scenario Outline: Login to paypal website with correct credentials
Given I am on paypal website
# And I validate the background image
# And I click the Sign Up button
# And I select the Business account radio button
And I should see the "Log In" button
And I should click the Log in button
And I enter <username> and <password>
When I click Login button
And I should click "not now" link
#And I should select offer from dropdown
And I should close the browser

Examples:
|username                 |password|
|testruby12233@gmail.com  |PickCart7|
