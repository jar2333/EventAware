Then /I (should be|am) in the profile "(.*)"/ do |check, uni| 
    if check == 'am'
        visit profile_path(uni)
    else
        steps %Q{ Then I should see "Email: #{uni}@columbia.edu" }
    end
end

Given /I (should be|am) in (a|my) profile$/ do |my, check|

    if my == 'am'
        visit profile_path("jar2333")
    else
        if my == 'my'
            steps %Q{ Then I should see "Email: jar2333@columbia.edu" }
        else
            steps %Q{ Then I should see "Email: " 
                And I should see "Name: "
                }
        end
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