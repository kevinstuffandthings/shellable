# Shellable [![Build Status](https://travis-ci.com/kevinstuffandthings/shellable.svg?branch=master)](https://travis-ci.com/kevinstuffandthings/shellable) [![Gem Version](https://badge.fury.io/rb/shellable.svg)](https://badge.fury.io/rb/shellable)

Open a [REPL](https://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop) within the context of any Ruby object.
Originally written for the [TimeBoss](https://github.com/kevinstuffandthings/timeboss) gem.

## Installation
Add this line to your application's Gemfile:

```ruby
# update with the version of your choice
gem 'shellable'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install shellable
```

## Usage

Imagine you're building a new Ruby library, and you'd like to provide users with a way to experiment with that new library from the inside.
When developing the `TimeBoss` gem, I wanted to create a [Rake task](https://github.com/kevinstuffandthings/timeboss#repl) to do just that.

```ruby
require 'timeboss/calendars'

calendar = TimeBoss::Calendars[:broadcast]
# => #<TimeBoss::Calendars::Broadcast:0x007fea08a40408 @basis=TimeBoss::Calendars::Broadcast::Basis>
```

Once the desired target object for our REPL has been created, we can simply make it "shellable":

```ruby
require 'shellable'
Shellable.open(calendar)
```

To check out a real-life example, head over to the TimeBoss [`timeboss:calendars:*:repl`](https://github.com/kevinstuffandthings/timeboss/blob/1e7a27de0add7da4fe77b49af62b650a7771021b/lib/tasks/calendars.rake#L12-L16) task definition.

```
$ rake timeboss:calendars:broadcast:repl
2.4.1 :001 > this_week
 => #<TimeBoss::Calendar::Week start_date=2020-08-10, end_date=2020-08-16>
2.4.1 :002 > parse('2020Q4..2021Q2')
 => #<TimeBoss::Calendar::Period[#<TimeBoss::Calendar::Quarter start_date=2020-09-28, end_date=2020-12-27>..#<TimeBoss::Calendar::Quarter start_date=2021-03-29, end_date=2021-06-27>] start_date=2020-09-28, end_date=2021-06-27>
2.4.1 :003 >
```

# Problems?
Please submit an [issue](https://github.com/kevinstuffandthings/shellable/issues).
We'll figure out how to get you up and running with Shellable as smoothly as possible.
