 Feature: Demo

# Background:
# Given I import scenarios from "D:\CYCLE\Practice\Demo\Variables.feature"


# Scenario:
# Given I "execute Dollar Scenario"
# Then I execute scenario "Dollar Variable"



 


@Chevron
Scenario Outline: Chevron


CSV Examples: Data/Demo.csv
Given I assign all chevron variables to dollar variables
Then I echo $FirstName
Then I echo $LastName


@CSVExample
Scenario Outline: Chevron
CSV Examples: Data/Name.csv
# Given I assign all chevron variables to dollar variables
Given I assign all chevron variables to dollar variables
# Then  I echo <FirstName>
# Then I echo <LastName>
Then  I echo $FirstName
Then I echo $LastName




@IfElse
Scenario: Ifelse

Given I assign 10 to variable "a"
And I assign 20 to variable "b"

	
If I verify text $a is equal to $b
	Then I echo "data matched"
Else I echo "data mismatched"
Endif





@Google
Scenario: Scenario Name
Given I open "chrome" web browser
when I navigate to "https://www.google.com/" in web browser

Then I click element "xPath://input[@class='gLFyf gsfi']" in web browser

And I type "delaplex" in element "xPath://input[@class='gLFyf gsfi']" in web browser within 10 seconds

Then I press Keys down 3 times with 1 seconds delay


Then I press keys ENTER

	And I wait 10 seconds

And I close web browser
