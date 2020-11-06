# Chitter with Active Record

## What is active record?

Active record gives you all that good stuff which, if you're a Makers dev, you had to do for yourself in Bookmark Manager.

Take a look at the cheep model – see how there's almost nothing in there??  Note that it inherits from ActiveRecord::Base.  That's where the magic happens.

CAVEAT: There is no magic, it's just code that you can't see right now.

## How to use this app

Do these things

* `bundle install`
* `createdb chitter`
* `rake db:migrate`
* `ruby app.rb`

Then go to [localhost:4567](http://localhost:4567) and start cheeping!