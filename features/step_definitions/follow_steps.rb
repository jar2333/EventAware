And /I do( not)? follow "(.*)"/ do |n, uni|
    if n 
        !Follower.follows?(uni, "jar2333")
    else
        Follower.follows?(uni, "jar2333")
    end
end

And /I now follow "(.*)"/ do |uni|
    steps %Q{   Given I am in the profile "sa4084"
                And I do not follow "sa4084"
                Given I click the follow button
                Then I should be in the profile "sa4084"
                And I do follow "sa4084" }
end

And /"(.*)" does( not)? follow me/ do |uni, n|
    
end

And /I press the (name|image) of the user "(.*)" who I follow$/ do |option, uni|

end

And /I press the (name|image) of the user "(.*)" who follows me$/ do |option, uni|
    
end