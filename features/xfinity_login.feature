
Feature: Sign Up functionality


Scenario Outline: Login to xfinity website with correct credentials
Given I am on xfinity website
And I click the sign in checkbox

Examples:
|username                 |password|
|testruby12233@gmail.com  |PickCart7|
# |row2   |PickCart7|
# |row3  |PickCart8|