#
# Concerns event page
#

#merge to one step later (page interaction steps)
Given /I (am|should be) at an event info page/ do |check|
    current_path =~ /user\/(.*)\/event\/[\d]+\/info/
end

And /I click the event creator (name|image)/ do |option| 
    event_id = (current_path.split('/')[-2]).to_i

    organizer_uni = Event.find(event_id).user.uni

    steps %Q{ And I go to "#{organizer_uni}" }
end

And /I click the event chat button/ do 
    steps %Q{ And I press "Chat" }
end

And /I click the register button/ do
    steps %Q{ And I press "Register" }
end

But /I click the edit button/ do
    steps %Q{ And I press "Edit" }
end

#merge to one step later (page information steps)
Given /the event creator (is|should be) "(.*)"/ do |check, uni|
    #use regex
    page.body =~ /<h2(.*)>Organizer<\/h2>(\s)*<p>(\s)*#{uni}(\s)*<\/p>/
end

Given /the event title (is|should be) "(.*)"/ do |check, title|
    #use regex
    page.body =~ /<h2(.*)>Event Name<\/h2>(\s)*<p>(\s)*#{title}(\s)*<\/p>/
end

Then /I am( not)? registered/ do |n|
    steps %Q{ Then I should see "Registered" }
end

#
# Concerns event elements in html
#

Given /I (do|should)( not)? see an event with (.*)$/ do |check, n, fields|
    
end

Then /I click the event with (.*)$/ do |fields|

end

#
# Concerns existence/properties of event records in database
#

Given /there exist created events/ do
    expect(Event.all.empty?).to be_falsey
end

Given /there (should|does)( not)? exist an( upcoming)? event with (.*)$/ do |should, n, upcoming, fields|

    attributes = Hash[fields.split(',').map { |a| 
        i = a.index /\"(.*)\"/
        [a[0..i-1].strip.tr(' ', '_').to_sym, a[i..-1].strip.tr('\"', '')]
    }]

    if attributes.key?(:organizer)
        attributes[:uni] = attributes[:organizer]
    end

    if should == 'should'
        expect(Event.where(attributes).empty?).to be !n.nil?
    elsif should == 'does' && !n
        event = Event.create_from_form(attributes)
        visit event_path("jar2333", event.id)
    end

end

And /the event with title "(.*)" has ocurred/ do |title| 
    event = Event.find_by(title: title)
    expect(Date.parse(event.end_date.to_s).past?).to be true
end

