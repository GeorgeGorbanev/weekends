# Weekends [![Build Status](https://travis-ci.org/GeorgeGorbanev/weekends.svg?branch=master)](https://travis-ci.org/GeorgeGorbanev/weekends) [![Gem Version](https://badge.fury.io/rb/weekends.svg)](https://badge.fury.io/rb/weekends)

This gem import class `Weekend` that help to identify weekend dates.

## Usage

It is possible to pass `Time`, `Date`, `DateTime` or `ActiveSupport::TimeWithZone` to all methods and `Time` will be returned.

Class does't have `ActiveSupport` dependency, so Rails dependencies not required.

### Nearest methods

This methods returns nearest weekends:

 ```ruby
 monday = Time.new(2017, 10, 2) 

 Weekend.nearest_saturday(monday)
 # => 2017-10-07 00:00:00 +0300 
 
 Weekend.nearest_sunday(monday)
 # => 2017-10-08 00:00:00 +0300 
 
 Weekend.nearest_full_weekends(monday)
 # => 2017-10-07 00:00:00 +0300..2017-10-08 00:00:00 +0300 

 ```
 
 If given weekend, methods will return next weekend:
 
  ```ruby
  saturday = Time.new(2017, 10, 7)
 
  Weekend.nearest_saturday(saturday)
  # => 2017-10-14 00:00:00 +0300 
   
  # ...
 
  ```

### On date

There is also basic method to check if date are weekend:

  ```ruby
  monday = Time.new(2017, 10, 2) 
  saturday = Time.new(2017, 10, 7)
  
  Weekend.on_date?(monday)
  # => false 
 
  Weekend.on_date?(saturday)
  # => true 
  ```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'weekends'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install weekends
    
## TODO: 

* add Rails optional monky patching, like `Date.today.weekend?` and `Date.today.nearest_sunday`;
* add getter of weekends on range of dates;
* add schedule with optionals weekend (for schedule not only 5/2, but 2/2, 2/3 or first weekday not monday).




## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
