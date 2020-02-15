## CA Mailboxer 2018

group 3: Daniel Bryant, Emma-Maria Thalen, Hunter Vitous, Lautaro Parra

Finished testing (Code overview)
This web application provide a email function, where we can create an account and works trough the functionality of the system. When we start working on it the code was broken by the previous programmers, we have fixed the functionality by the realization of several tests that gave us the ability to fix the code and make it works again. The functionality is correct and the app can:

Create accounts by
                 Receiving an unique user name
                 Setting a valid email
                 Providing a password of minimun 8 characters
                 Confirmating the password a second time
The account can access to the email box and
                 Send and receive Emails
                 Delete emails
                 Re activate deleted emails 
                 See other email active accounts

           

User stories
We achieved the goal following the next user stories, we shared with eachother with pivotaltracker.com:

Testing to be able to view home page

As a developer
In order for the user to access the app
i want them to be able to see the home page

To be able to see the right buttons on the homepage

As a User
in order to access the account and sign up forms
I will like to see the respective buttons in the homepage 

User can create an account

As a user
In order to use the application
I need to be able to create an account

Functionality to add an account in the mail app

As a user
in order to create an account
i need to be able to send my information to the app database



User can move back an already deleted mail to the inbox

As a user
In order to take back an already deleted email
I need to be able to have a folder for my deleted emails

User can delete an email

As a user
In order to have a organised inbox
I need to be able to delete emails


Dependencies
| Ruby |   | Yaml | ||
source 'https://rubygems.org'
ruby '2.4.3'

Gems
rails
bootstrap-sass
chosen-rails
devise
jbuilder
jquery-rails
mailboxer
pg
puma
rake
sass-rails 
turbolinks 
uglifier

Gems:Development

pry-rails
spring
web-console

Gems:Testing      
rspec-rails          
shoulda-matchers
factory_bot_rails
capybara
coveralls

Setup
To access this code visit GitHub repo and complete the following steps:

Fork the repo and clone
Have Ruby and Gem bundler installed
Run in terminal Rails s
In your browser go to http://localhost.3000
Use the aplication

Acknowledgements
The material has been created by Craft Academy
The app is being created in Ruby
The framework in wich we have worked is Rails
The app was tested in Rspec
We follow the status and progress of our work with Coveralls and Semaphore
We create this Readme file based on the amazing work of karro readme


Updates/Improvement Plans
There will be updates to this software shortly.

License
MIT License
