# Hockey Site

#### NHL related blog, team stats, and daily schedule, 2/2/2016

#### By Chris Underwood

## Description

This is my end of class project for Epicodus. The hope is to show a range of skills as well as following programming best practices.
The site is in 3 parts: 1) a hockey related blog, 2) a team stats section, and 3) a daily schedule. Authentication is provided by the Devise gem.

Blog:

Consists of posts, comments, and tags. All users can view blog posts, comments, and tags. Authenticated users can all create new posts, comments, and tags. They can also click on a tag to see all posts with that tag. Admin users have the additional power of editing and deleting posts, comments, and tags.

Team Stats:

Must be an authenticated user to view stats. Column heading are sortable. Data is from live SportsRadar API. Currently this is set to a default of one team. I am working on having this set up to be any NHL team.

Daily Schedule:

This schedule is for all teams on the current day. Column headings are sortable. Data is from live SportsRadar API. Would eventually like to have the ability to search by a specific day.

## Setup/Installation Requirements

Clone the repo to your local machine.
Start Postgres
rake db:setup (this will create the database and populate the database with data from seeds.rb)
localhost:3000 in your browser of choice

## Known Bugs

The NHL stats page is only set for one team. It will not switch to other teams.

## Support and contact details

Chris Underwood - email cunderwoodmn at gmail dot com

## Technologies Used

Postgress
Ruby 2.2
Rails 4.2.5
AJAX
SportsRadar API
jquery-turbolinks gem
will_paginate gem
devise gem
JSON
SportsRadar API

### License
£

Copyright (c) 2015 Chris Underwood
Licensing
An open source license details how others can use your code. MIT and GPL are the most common licenses. An MIT license means your code is free to use by anyone and you are not liable (Rails and jQuery use an MIT license). GPL also indicates free usage of the code but when used, the resulting work MUST be open source (Linux, Git and Wordpress use GPL).

For additional details on choosing a license for your code, visit GitHub's Choose a License site.
