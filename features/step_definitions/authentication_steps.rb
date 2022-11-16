Given /there is a user "(.*)" with password "(.*)"$/ do |username, password|
    User.create!(name: "Jose", uni: username)
    Authentication.make(username, password)
end

Given /I am( not)? logged in as "(.*)"/ do |not_logged, uni|
    #record exists
    expect(User.find_by(uni: uni).authentication).to be_truthy

    #get user token
    user_token = User.find_by(uni: uni).authentication.auth_token

    #visit login page (remove this side effect?)
    steps %Q{ Then I go to the index page }

    #reading cookie
    session = Capybara.current_session.driver.request.session
    session_token = session[:auth_token]

    if not_logged
        #if session token exists, expect it to be different from the one in database
        if not session_token.nil?
            expect(session_token != user_token).to be true
        end
    else
        #expect the client to have a correct session token
        expect(session_token).not_to be_nil
        expect(session_token == user_token).to be true
    end
end

Then /I (am|should be) in the login page/ do |option|
    if option == 'am'
        steps %Q{ Then I go to the login page }
    else
        current_path = URI.parse(current_url).path
        expect(current_path == path_to("the login page")).to be true
    end
end

Given /I submit credentials "(.*)" for user "(.*)"/ do |credentials, user|
    steps %Q{ Given I fill in "Username" with "#{user}" 
              And I fill in "Password" with "#{credentials}" 
              But I press "Sign in"
            }
end

Given /I log in as (.*)$/ do |username|
    user = User.find_by(uni: username)
    if !user
        steps %Q{ Then there is a user "#{username}" with password "password" }
    end

    steps %Q{
        Given there is a user "#{username}" with password "password"
        And I am not logged in as "#{username}"
        Then I am in the login page
        Given I submit credentials "password" for user "#{username}"
        Then I should be in my home page
        And I am logged in as "#{username}"
    }
end