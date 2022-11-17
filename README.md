# README
Team members:
* Surya Akella (sa4084)
* Tarang Rakesh Jain (trj2122)
* Jose Ramos (jar2333)
* Aarushi Jain (aj3087)

Instructions to install dependencies:

* ```bundle install```


Instructions to run test suite:
* ```bundle exec cucumber``` to run cucumber tests (user stories)
* ```bundle exec rspec``` to run rspec tests

Services (job queues, cache servers, search engines, etc.)

* Search engine (filter events)
* Create events
* Edit events
* Visit user profile
* Follow/un-follow
* Chat (post message for event)

Testing Instructions
* First we Clear the  Database ```bin/rake db:drop```
* Then we create the database ```bin/rake db:create```
* Then we migrate the database ```bin/rake db:migrate```
* Run the cucumber tests using ```bundle exec cucumber```
* Run the rspec tests using```bundle exec rspec```

Deployment instructions
* Heroku Link: https://infinite-beyond-96203.herokuapp.com/
Login Id: jar2333
Password: password

Github Link
* https://github.com/jar2333/EventAware/
