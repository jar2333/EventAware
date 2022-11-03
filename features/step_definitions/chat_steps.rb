Then /I (am|should be) in a chat page/ do 
    steps %Q{ Then I should see "Message:" }
end

And /I (click|press) the (back|event) button/ do 
    page.go_back
end

Given /I (write|type) "(.*)" on the chat text box/ do |message|
    steps %Q{ Then I fill in "msg" with "#{message}" }
end

And /I (click|press) the send button/ do
    steps %Q{ Then I press "Send" }
end

Then /I should see a message by user "(.*)" that says "(.*)"/ do |user, message|
    page.body =~ /#{message}(\s)*<br>(\s)*<div(.*)>(\s)*#{user}/
end