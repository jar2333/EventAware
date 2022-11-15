# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# events = Event.create([{event_id: "E01", organizer: "jar2333", title: "Halloween Party", description: "Columbia Halloween Party. Theme: Harry Potter", "date_posted": "2022-10-21 22:00:00", "start_date": "2023-10-31 22:00:00", "end_date": "2023-11-01 01:00:00"},
#                        {event_id: "E02", organizer: "sa4084", title: "Birthday Party", description: "Birthday Party. Gifts expected haha :)", "date_posted": "2022-10-21 22:00:00", "start_date": "2023-02-12 9:00:00", "end_date": "2023-02-12 13:00:00"},
#                        {event_id: "E03", organizer: "sr5677", title: "New Years Party", description: "New year bash. Alcohol and food", "date_posted": "2021-10-19 22:00:00", "start_date": "2021-12-31 23:00:00", "end_date": "2022-01-01 10:00:00"},
#                        {event_id: "E04", organizer: "trj2122", title: "Governor's Island Trip", description: "Field trip", "date_posted": "2021-10-17 22:00:00", "start_date": "2022-07-12 9:00:00", "end_date": "2022-07-13 9:00:00"},
#                        {event_id: "E05", organizer: "rt6789", title: "Diwali Celebration", description: "Traditional Indian clothes recommended", "date_posted": "2022-10-15 22:00:00", "start_date": "2022-10-21 21:00:00", "end_date": "2022-10-21 22:00:00"},
#                        {event_id: "E06", organizer: "ds2387", title: "Empire State Building Visit", description: "Free entry. 86th Story :)", "date_posted": "2021-10-23 22:00:00", "start_date": "2022-01-29 18:00:00", "end_date": "2022-01-29 20:00:00"},
#                        {event_id: "E07", organizer: "jar2333", title: "Football Game", description: "Intramural", "date_posted": "2021-10-24 22:00:00", "start_date": "2022-01-06 9:00:00", "end_date": "2022-01-06 10:00:00"},
#                        {event_id: "E08", organizer: "trj2122", title: "Basketball Game", description: "Casual pickup basketball at Dodge", "date_posted": "2022-10-15 22:00:00", "start_date": "2023-11-05 9:00:00", "end_date": "2023-11-05 10:00:00"},
#                        {event_id: "E09", organizer: "sr5677", title: "Ice skating", description: "Rental skates for $12", "date_posted": "2022-10-10 22:00:00", "start_date": "2022-12-26 20:00:00", "end_date": "2022-12-26 21:00:00"},
#                        {event_id: "E10", organizer: "ds2387", title: "Bird Watching", description: "Wildlife exploration at Bronx Zoo", "date_posted": "2022-10-09 22:00:00", "start_date": "2023-02-15 9:00:00", "end_date": "2023-02-15 11:00:00"}])

# messages = Message.create([{message_id: "M01", user_id: "aj3087", event_id: "E01", date_posted: "2022-10-22 23:00:00", content: "I am super interested :)"},
#                            {message_id: "M02", user_id: "sa4084", event_id: "E01", date_posted: "2022-10-22 23:30:00", content: "What are the requirements?"},
#                            {message_id: "M03", user_id: "rt6789", event_id: "E02", date_posted: "2022-10-22 23:00:00", content: "Happy Birthday in advance."},
#                            {message_id: "M04", user_id: "sa4048", event_id: "E02", date_posted: "2022-10-22 23:30:00", content: "Thank you."},
#                            {message_id: "M05", user_id: "jar2333", event_id: "E01", date_posted: "2022-10-21 23:00:00", content: "Welcome to my Halloween Party."},
#                            {message_id: "M06", user_id: "sr5677", event_id: "E09", date_posted: "2022-10-11 23:00:00", content: "Bring your skates."},
#                            {message_id: "M07", user_id: "ds2387", event_id: "E08", date_posted: "2022-10-16 09:00:00", content: "I am excited for a game at 5 PM"},
#                            {message_id: "M08", user_id: "br2346", event_id: "E08", date_posted: "2022-10-16 10:00:00", content: "Sure, 5 PM works for me too."},
#                            {message_id: "M09", user_id: "sr5677", event_id: "E04", date_posted: "2021-10-18 09:00:00", content: "What time are we meeting?"},
#                            {message_id: "M10", user_id: "trj2122", event_id: "E04", date_posted: "2022-10-18 10:00:00", content: "9 AM"}])

users = [
    {:name=>'Joseph',:uni=>'jar2333'},
    {:name=>'Surya',:uni=>'sa4084'},
    {:name=>'Alvin',:uni=>'aj3087'},
    {:name=>'Michael',:uni=>'ma4987'},
    {:name=>'Tarang',:uni=>'trj2122'},
    {:name=>'Sam',:uni=>'sr5677'},
    {:name=>'Rick',:uni=>'rt6789'},
    {:name=>'Dan',:uni=>'ds2387'},
    {:name=>'Bob',:uni=>'br2346'},
]
users.each do |user|
    User.create!(user)
end
authentications = [
        {:uni=>'jar2333',:password=>"password"},
        {:uni=>'sa4084', :password=>"password1"},
        {:uni=>'aj3087', :password=>"password2"},
        {:uni=>'ma4987', :password=>"password3"},
        {:uni=>'trj2122',:password=>"password4"},
        {:uni=>'sr5677', :password=>"password5"},
        {:uni=>'rt6789', :password=>"password6"},
        {:uni=>'ds2387', :password=>"password7"},
        {:uni=>'br2346', :password=>"password8"},
]
authentications.each do |authentication|
    id = authentication[:uni]
    password = authentication[:password]
    Authentication.make(id, password)
end


# followers = [{:user_id=>'sa4084',:follower_id=>'aj3087'},
#         {:user_id=>'jar2333',:follower_id=>'sa4084'},
#         {:user_id=>'aj3087',:follower_id=>'ma4987'},
#         {:user_id=>'ma4987',:follower_id=>'sa4567'},
#         {:user_id=>'sa4567',:follower_id=>'trj2122'},
#         {:user_id=>'trj2122',:follower_id=>'sr5677'},
#         {:user_id=>'sr5677',:follower_id=>'rt6789'},
#         {:user_id=>'rt6789',:follower_id=>'ds2387'},
#         {:user_id=>'ds2387',:follower_id=>'br2346'},
#         {:user_id=>'br2346',:follower_id=>'sa4567'},
# ]
# followers.each do |follower|
#     Follower.create!(follower)
# end
# registrations = [{:user_id=>'sa4084',:event_id=>'E01'},
#         {:user_id=>'jar2333',:event_id=>'E03'},
#         {:user_id=>'aj3087',:event_id=>'E01'},
#         {:user_id=>'ma4987',:event_id=>'E03'},
#         {:user_id=>'sa4567',:event_id=>'E01'},
#         {:user_id=>'trj2122',:event_id=>'E03'},
#         {:user_id=>'sr5677',:event_id=>'E04'},
#         {:user_id=>'rt6789',:event_id=>'E06'},
#         {:user_id=>'ds2387',:event_id=>'E08'},
#         {:user_id=>'br2346',:event_id=>'E08'},
#         {:user_id=>'sa4048',:event_id=>'E02'},
#         {:user_id=>'rt6789',:event_id=>'E02'},
#         {:user_id=>'jar2333',:event_id=>'E01'},
#         {:user_id=>'sa4084',:event_id=>'E02'},
#         {:user_id=>'sr5677',:event_id=>'E03'},
#         {:user_id=>'trj2122',:event_id=>'E04'},
#         {:user_id=>'ds2387',:event_id=>'E06'},
#         {:user_id=>'jar2333',:event_id=>'E07'},
#         {:user_id=>'rt6789',:event_id=>'E05'},
#         {:user_id=>'trj2122',:event_id=>'E08'},
#         {:user_id=>'sr5677',:event_id=>'E09'},
#         {:user_id=>'ds2387',:event_id=>'E10'},
# ]
# registrations.each do |registration|
#     Registration.create!(registration)
# end

