
Feature: Demoqa

# After Scenario: 
# Given I close web browser


@wordpad
Scenario: 
Given I "Open Wordpad"
When I press keys "Ctrl+Esc"

	And I wait 5 seconds
	And I enter "Wordpad"
	And I wait 5 seconds
Then I press keys "Enter"
	And I echo "Wordpad"
    
Given I press keys "ALT+F4"

	And I echo " Close Wordpad"
    
# Then I execute scenario "Practice"

@Tabs
Scenario:Handling Tabs
Given i open "Chrome" web browser

When I navigate to "https://demoqa.com/" in web browser
Then I press keys CTRL+T
And I Navigate to "https://opensource-demo.orangehrmlive.com/" in web browser within 10 	seconds
    
	And I navigate Back in web browser
	And I navigate forward in web browser


@Variable
Scenario:
Given I assign "String" to variable "Substring"
Then I echo $Substring

Given I prompt "First Number" and assign user response to variable "First_Name"
Then I echo $First_Name

Given I prompt "Last Name" and assign user response to variable "Last_Name"
Then I echo $Last_Name

Given I prompt "age" for integer and assign user response to variable "Age"
Then I echo $Age

@And
Scenario: Use of And condition
Given I assign "Cycle" to variable "a"
Then I assign "Cycle" to variable "b"
And I assign "CycleLab" to variable "c"

	If I verify text $a is equal to $b ignoring case
	And I verify text $a is not equal to $c ignoring case
	Then I echo "data matched"
	Endif


@combiningVariableValue
Scenario: Combining Variable using FULL
Given I assign "Snehal" to variable "FirstName"
And I assign "Pande" to variable "LastName"

# When I assign variable "Full_Name" by combining $FirstName " " $LastName
# And I Echo $Full_Name
And I Echo $FirstName
And i assign variable "Fullname" by combining $FirstName " " $LastName
Then I echo $Fullname


@ImageMatching
Scenario: 
Given I open "chrome" web browser
When I navigate to "https://www.amazon.in/" in web browser
Then I see image "Image:Datasets\Amazon.png" in web browser within 5 seconds
And I echo "I see Image"

@wip
Scenario: Practice
Given I open "chrome" web browser
Then I navigate to "https://www.techlistic.com/p/selenium-practice-form.html" in web browser
Then I type "Snehal" in element "xPath://input[@name='firstname']" in web browser within 10 seconds




@a
Scenario: 
Given I "Open Wordpad"
When I press keys CTRL+ESC
Then I wait 10 seconds
Then I enter "Wordpad"
Then I press keys ALT+F4

@comparison
Scenario:
Given I assign 10 to variable "var1"
Given I assign 20 to variable "var2"
then I verify number 10 is not equal to 20
then I verify number 20 is greater than 20
Then I echo $var1

@Dollarvariable
Scenario:
Given I assign "Snehal" to variable "First_Name"
Then I assign "Pande" to variable "Last_name"
And I echo $First_Name
And i echo $Last_name

@verifytext
Scenario: 
Given I assign "web" to variable "a"
Then I assign "web" to variable "b"
And I assign "Testing" to variable "c" 

If I verify text $a is equal to $b ignoring case
And I verify text $a is not equal to $c ignoring case
Then I echo "data matched"
Endif

@Chevron
Scenario Outline: Accessing Chevron variable

Examples:
| FirstName |LastName|
|"Snehal"|"Pande"|
|"Quality"|"Assurance"|

Then I echo <FirstName>
And I echo <LastName>

@wordpad
Scenario:
Given i "Open wordpad"
Then I press keys ENTER

Then I Press Keys ALT+F4


#####Looping concepts
@ifelse
Scenario:
Given I assign 10 to variable "a"
And I assign 20 to variable "b"

   If I verify number 20 is greater than 10
   Then i echo "data matched"
   And I echo $a  
   Else i echo "data mismatch"
Endif



@While
Scenario: 
Given I assign 1 to variable "a"
While I verify number $a is less than or equal to 5
	Then I echo $a
	Then I increase variable "a" by 1
    Then I decrease variable "a" by 1
EndWhile


@Wip 
Scenario:
Given I assign 1 to variable "a"
Then I assign 0 to variable "b"
And I assign 1 to variable "c" 
And I verify number $a is greater than 0	

Then I echo $a



	


@Adding_List
Scenario: Adding list of numbers
Given I create list "List_of_numbers"
	And I append element 1 to list "List_of_numbers"
	And I append element 2 to list "List_of_numbers"
	And I append element 4 to list "List_of_numbers"
	And I append element 5 to list "List_of_numbers"

Then I echo "List Item : "$List_of_numbers

	Given I prepend element 0 to list "List_of_numbers"
	Then I echo "List Item : "$List_of_numbers
	Then I reverse list "List_of_numbers"
	And I echo "Reverse : "$List_of_numbers

Then I sort list "List_of_numbers"
And I echo "Sort : "$List_of_numbers

	And I verify list "List_of_numbers" is not empty

Then I get length of list "List_of_numbers" and save as variable "length_of_list"
And I echo "Length : "$length_of_list


@Replace
Scenario:Replacement Statement

Given I assign "A" to variable "a"
And I assign "B" to variable "b"

And I replace variables in string "A" and store as variable "C"
Then I echo $C

And I echo "Variable replaced Successfully"


@Replace_Statement
Scenario:Replacement Statement

Given I assign "smoke Testing" to variable "a"
And I assign "REgression Testing" to variable "b"

And I replace variables in string "Sanity Testing" and store as variable "C"
Then I echo $C

And I echo "Variable replaced Successfully"


@ReplaceStatement
Scenario:Replace variable
Given I "Replace variable"
And I assign "Username:123" to variable "Var1"
And I assign "s12" to variable "Var2"
Then I echo $Var1
And I replace variables in string "Cycle Id:${Var2}" and store as variable "Var1"
Then I echo $Var1


@CreateList
Scenario: CreateList 
Given I create list "Fruits"
Then I append element "Apple" to list "Fruits"
And I append element "PineApple" to list "Fruits"
And I append element "Mango" to list "Fruits"

Then I echo $Fruits

Then I prepend element "Strawberry" to list "Fruits"
Then I echo $Fruits

And I sort list "Fruits"
Then I echo $Fruits

@andStatement
Scenario:And STatement
Given I prompt "Country that u live in?" and assign user response to variable "Country"
And I prompt "Favorite Game?" and assign user response to variable "Game"
Then I echo $Country
Then I echo $Game





@Wip
Scenario: Demoqa Login

GIVEN I OPEN "CHROME" WEB BROWSER
Then I navigate to "https://demoqa.com/" in web browser
Then I maximize web browser
Then I press keys CTRL+ESC
And I wait 10 seconds
Then I scroll to element "xPath://h5[text()='Forms']" in web browser 
Then I wait 10 seconds
Then I click element "xPath://h5[text()='Forms']" in web browser
Then I verify text "Forms" is equal to "Forms" ignoring case
Then I click element "xPath://span[text()='Practice Form']" in web browser



Scenario:
Given I assign "A" to variable "a"








###Git commands
#  $git init   --> initialization
#  $git config --global user.name
#  $git config --global user.email
#  $git add .
#  $git commit -m 'add files'
# $git add "particular files"
#  $git push https://
# $ git pull https://
# $git rm "Filename"     ----Delete single file
#$git reset --hard





