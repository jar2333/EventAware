Then /I (should be|am) in the profile( for user)? "(.*)"/ do |uni| 

end

Given /I (should be|am) in my profile(| page)$/ do

end

Given /I (should be|am) in a profile(| page)$/ do

end

Then /I view my following list/ do
    steps %Q{ Then I press "following" }
end

Then /I view my followers list/ do
    steps %Q{ Then I press "followers" }
end

Given /I (press|click) the profile (button|tab)/ do

end

Then /I (press|click) the (un)?follow button/ do |n|
end