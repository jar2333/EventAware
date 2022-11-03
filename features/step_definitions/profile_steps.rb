Then /I (should be|am) in the profile( for user)? "(.*)"/ do |uni, n| 
    steps %Q{ Then I should see "Email: #{uni}@columbia.edu" }
end

Given /I (should be|am) in my profile(| page)$/ do
    steps %Q{ Then I should see "Email: jar2333@columbia.edu" }
end

Given /I (should be|am) in a profile(| page)$/ do
    steps %Q{ Then I should see "Email: " 
              And I should see "Name: "
            }
end

Then /I view my following list/ do
    steps %Q{ Then I press "following" }
end

Then /I view my followers list/ do
    steps %Q{ Then I press "followers" }
end

Given /I (press|click) the profile (button|tab)/ do
    steps %Q{ Then I follow "Profile" }
end

Then /I (press|click) the (un)?follow button/ do |n|
end