# MA_Hacks_Workshop

## Getting Started

Follow these instructions to install homebrew(package manager) https://brew.sh/

Install rbenv so that we can install ruby.

### Installing Ruby

1. [install rbenv](https://github.com/rbenv/rbenv#installation) for your environment
2. `rbenv init` (preps rbenv, only necessary if `eval "$(rbenv init -)"` was not added to your `~/.bash_profile`)
3. `rbenv install $(cat .ruby-version)` (installs this version of ruby)
4. `rbenv local $(cat .ruby-version)` (selects this version of ruby)

### Installing Postgres

You can either install via home brew with `brew install postgres` or via
downloading the app from [Postgres](https://postgresapp.com/)

Start postgres

If installed via homebrew `brew services start postgres` or if you installed the
application, go to applications and select postgres.

### Setup Script

After you have cloned this repo, run this setup script to set up your machine
with the necessary dependencies to run and test this app:

    % ./bin/setup

### Running test

The test suite can be run like so:

    % rspec spec

## Guidelines

* [Best Practices](http://github.com/thoughtbot/guides/blob/master/best-practices)
* [Style](http://github.com/thoughtbot/guides/blob/master/style)
