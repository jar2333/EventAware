Then /I (should be|am) in the profile "(.*)"/ do |check, uni| 
    steps %Q{ Then I should see "Email: #{uni}@columbia.edu" }
end

Given /I (should be|am) in (a|my) profile$/ do |my, check|
    if my == 'my'
        steps %Q{ Then I should see "Email: jar2333@columbia.edu" }
    else
        steps %Q{ Then I should see "Email: " 
              And I should see "Name: "
            }
    end
end

Then /I view my (following|followers) list/ do |option|
    steps %Q{ Then I press "#{option}" }
end

Given /I click the profile button/ do
    steps %Q{ Then I follow "Profile" }
end

Then /I click the (un)?follow button/ do |un|
end