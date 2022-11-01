#
# Concerns event page
#

#merge to one step later (interaction steps)
Given /I (am|should be) on an event page/ do

end

And /I (press|click) the event creator name/ do 

end

And /I (press|click) the event creator image/ do

end

And /I (press|click) the event chat (button|link)/ do 

end

#merge to one step later (information steps)
Given /the event (creator|organizer) (is|should be) "(.*)"/ do |uni|

end

Given /the event title (is|should be) "(.*)"/ do |title|

end


#
# Concerns event elements in html
#

Given /I (do|should) see an event with (.*)$/ do |fields|
    
end

Then /I click the event with (.*)$/ do |fields|

end

#
# Concerns existence/properties of event records in database
#

Given /there (are|exist) created events/ do

end

Given /there (is|exists) an( upcoming)? event with (.*)$/ do |upcoming, fields|

end

And /the event with title "(.*)" has (occurred|passed|happened)/ do |title| 

end

