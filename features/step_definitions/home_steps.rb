Given /I am in (my|the) home page/ do

end

Given /I search for "(.*)"/ do |search_term| 

end

Given /I click the profile (button|tab)/ do

end

Given /I (do|should) see an event with title "(.*)"/ do |title|
    steps %Q{ I should see #{title} }
end

Then /I click the event with title "(.*)"/ do |title|

end