# xcharts_rails

A gem to include Xcharts into Rails 3.1+ Assets Pipeline

## Installation

this library requires D3, i didn't want to include it on this gem since
it may have be installed before, i recommend using the
[d3_rails](https://github.com/logical42/d3_rails) gem, install it and
then install this one

Add this line to your application's Gemfile:

    gem 'xcharts_rails'

And then execute:

    $ bundle install

After that execute:

    $ rails g xcharts:install

This should add `xcharts` to `application.js` and `application.css`

your `application.js` should look like this to `xcharts` to work

    //= require d3.v3
    //= require xcharts

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Copyright

Copyright (c) 2012 Orlando Del Aguila. See LICENSE.txt for
further details.
