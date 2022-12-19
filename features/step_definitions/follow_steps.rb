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