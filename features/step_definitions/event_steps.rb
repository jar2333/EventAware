#
# Concerns event page
#

#merge to one step later (page interaction steps)
Given /I (am|should be) on an event page/ do |check|
    steps %Q{ Then I should see "Event Description" }
end

And /I click the event creator (name|image)/ do |option| 

end

And /I click the event chat button/ do 
    steps %Q{ And I press "Chat" }
end

And /I click the register button/ do

end

But /I click the edit button/ do
end

#merge to one step later (page information steps)
Given /the event creator (is|should be) "(.*)"/ do |check, uni|
    #use regex
end

Given /the event title (is|should be) "(.*)"/ do |check, title|
    #use regex
end

Then /I am( not)? registered/ do |n|
end

#
# Concerns event elements in html
#

Given /I (do|should)( not)? see an event with (.*)$/ do |check, n, fields|
    
end

Then /I click the event with (.*)$/ do |fields|

end

#
# Concerns existence/properties of event records in database
#

Given /there exist created events/ do
    expect(Event.all.empty?).to be_falsey
end

Given /there does( not)? exist an( upcoming)? event with (.*)$/ do |n, upcoming, fields|

end

And /the event with title "(.*)" has ocurred/ do |title| 

end

