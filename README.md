# ReportBeforeBlame

ReportBeforeBlame is a RoR (Ruby on Rails) web aplication tool that allows a easy way to report bugs and communicate the arrangements for them.

## Requirements (tech stack)

ReportBeforeBlame runs on:

### Back-end stack:

* ruby 2.1.3
* Rails 4.2.0
* RSpec for unit testing

### Database:

* PRODUCTION -> postgres (PostgreSQL) 9.4.0
* DEVELOPMENT -> SQLite 3.8.2

### Front-end stack:

* jQuery
* HTML5
* CSS3
* Font awesome for icons
* Boostrapt 
* [Based on template "SB Admin 2"](http://startbootstrap.com/template-overviews/sb-admin-2/)

## Installation

To run the app, you will need to have ruby, bundler installed in your machine.

Make sure you have all Ruby gems dependencies installed:

`bundle install`

Create and populate the dev db:

`rake db:setup`

To run aplication on development mode

`rails s `

And you should have the app running on localhost:3000
