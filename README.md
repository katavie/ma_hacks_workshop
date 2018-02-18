# MA_Hacks_Workshop

## Getting Started

_Note_: You'll need to have the correct version of Ruby installed
to run SP. It is recommended to [install rbenv](https://github.com/rbenv/rbenv#installation) for managing ruby/gem versions and this
README will not mention other solutions.

### Installing Ruby

1. [install rbenv](https://github.com/rbenv/rbenv#installation) for your environment
2. `rbenv init` (preps rbenv, only necessary if `eval "$(rbenv init -)"` was not added to your `~/.bash_profile`)
3. `rbenv install $(cat .ruby-version)` (installs this version of ruby)
4. `rbenv local $(cat .ruby-version)` (selects this version of ruby)

### OSX Scripted Configuration

After you have cloned this repo, run this setup script to set up your machine
with the necessary dependencies to run and test this app:

    % ./bin/setup

It assumes you have a machine equipped with Ruby, Postgres, etc. If not, set up
your machine with [this script].

[this script]: https://github.com/thoughtbot/laptop

and the test suite can be run like so:

    % rspec spec

[heroku local]: https://devcenter.heroku.com/articles/heroku-local

#### Postgresql

This application requires `postgresql` and defaults to `localhost:5432` with no username or password

## Guidelines

* [Protocol](http://github.com/thoughtbot/guides/blob/master/protocol)
* [Best Practices](http://github.com/thoughtbot/guides/blob/master/best-practices)
* [Style](http://github.com/thoughtbot/guides/blob/master/style)
