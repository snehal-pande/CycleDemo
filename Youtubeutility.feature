Feature:Exploring Youtube 
Background:
Given I assign "Chrome" to variable "browser"
Given I assign "https://www.youtube.com/" to variable "youtube"


After Scenario: 
Given I close web browser


@SearchBox
Scenario: SearchBox 


# Given I open $browser web browser

# Then I navigate to $youtube in web browser

And I type "xpath tutorials" in element "xPath://div[@id='search-input']//child::input[@id='search']" in web browser
 
 Then I click element "xPath://button[@id='search-icon-legacy']" in web browser
 
 
 @ReturnToHome
 Scenario:Return To Home Page
 
# Given I open $browser web browser

# Then I navigate to $youtube in web browser

And I maximize web browser

And I click element "xPath://yt-formatted-string[text()='Home']" in web browser
 
 
 @SUbscription
 Scenario:Navigate to Subsription
 
# Given I open $browser web browser

# Then I navigate to $youtube in web browser 

And I maximize web browser

And I wait 10 seconds

And I click element "xPath://yt-formatted-string[text()='Subscriptions']" in web browser