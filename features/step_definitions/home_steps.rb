Given /I am in my home page/ do 
    visit path_to("the home page")
end

Given /I should( not)? be in my home page/ do |n|
    expect(URI.parse(current_url).path == path_to("the home page")).to be !n
end


Given /I search for "(.*)"/ do |search_term| 
    visit home_path("jar2333", :search => search_term)
end

Then /I click the home tab/ do
    steps %Q{ Then I follow "Home" }
end