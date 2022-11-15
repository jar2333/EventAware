Given /I (am|should be) on an edit event page/ do |check|

end

Then /I enter "(.*)" in the (.*) field/ do |text, field|
    field_name = field.titleize
    if field_name.end_with? "Date"
        fill_in field_name, with: Date.strptime(text, '%D')
    elsif field_name.end_with? "Time"
        fill_in field_name, with: Time.parse(text)
    else
        fill_in field_name, with: text
    end
end

Then /I click the confirm (edit|create) button/ do |edit|
    
    if edit == 'edit'
        button = 'Edit Event'
    else
        button = 'Create New Event'
    end

    steps %Q{ And I press "#{button}" }
end