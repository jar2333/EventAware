# Concerns event page

Given /I am on an event page/ do

end

And /I press the event creator name/ do 

end

And /I press the event creator image/ do

end

Given /the event (creator|organizer) (is|should be) "(.*)"/ do |uni|

end

Given /the event title (is|should be) "(.*)"/ do |title|

end

# concerns event elements in html

Given /I (do|should) see an event with (.*)$/ do |fields|
    
end

Then /I click the event with (.*)$/ do |fields|

end

# Concerns existence/properties of event records in database

Given /there (are|exist) created events/ do

end

Given /there (is|exists) an( upcoming)? event with (.*)$/ do |upcoming, fields|

end

And /the event with title "(.*)" has (occurred|passed|happened)/ do |title| 

end

