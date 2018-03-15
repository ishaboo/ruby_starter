## MUD in Ruby

# MVC, SQLite3 and ActiveRecord

This is a database backed MVC based small MUD that needs needs a lot of work.

### Setup instructions

- Clone Repo

- edit rekefile and comment out ```require 'rspec/core/rake_task'```

  so it should look like this:

```
# require 'rspec/core/rake_task'
```

- setup the db with:

```
user@host:~$ rake db:setup
```

...sorry, no Gemfile yet, will work on adding one at some point...

### Run the Game

In order to run the game just type:

```
user@host:~$ rake
```

There are several in game commands, which can be viewed by typing ```help```

To exit the game just type ```exit``` or ```quit```.
