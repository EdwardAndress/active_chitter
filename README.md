# Chitter with Active Record

## What is active record?

Active record gives you all that good stuff which, if you're a Makers dev, you had to do for yourself in Bookmark Manager.

Take a look at the cheep model – see how there's almost nothing in there??  Note that it inherits from ActiveRecord::Base.  That's where the magic happens.

CAVEAT: There is no magic, it's just code that you can't see right now.

## How to use this app

Do these things

* `bundle install`
* `createdb chitter`
* `rake db:create db:migrate db:seed`
* `rackup`

Then go to [localhost:9292](http://localhost:9292) and sign in with these credentials.

* user@email.com
* 12345678

## Hang on, what's that rake thing??

[Rake is a task runner](https://www.rubyguides.com/2019/02/ruby-rake/) and a 'task' in this case is going to be something you'll do repeateadly, as part of building and using your app, such as migrating or dropping your database.  Ultimately though, you can turn pretty much anything into a rake task if you really want to.