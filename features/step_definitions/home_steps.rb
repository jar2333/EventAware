Given /I am( not)? in my home page/ do |n|
    visit home_path("jar2333")
end

Given /I search for "(.*)"/ do |search_term| 
    visit home_path(jar2333, :search => search_term)
end

Then /I (press|click) the home (button|tab)/ do |a, b|
    steps %Q{ Then I follow "My Events" }
end