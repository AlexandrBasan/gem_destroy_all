# Destroyall

TODO: Simple gem for quick add destroy all method for all models.

## Installation

Add this line to your application's Gemfile:

    gem 'destroyall'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install destroyall

## Usage

TODO: Simple gem for quick add destroy all method for all models. This gem add simple method destroyall for all models for quick destroy all records in table.
This gem using Ruby method destroy_all:

    $ Person.destroy_all("last_login < '2004-04-04'")
    $ Person.destroy_all(:status => "inactive")

Gem have 2 methods:

    $ destroy_all(model)
    $ destroy_all_with_conditions(model, conditions, conditions_value)

Using destroy_all method you can set model_name as argument.
Using destroy_all_with_conditions method you can set model_name as argument model, condition as condition (this argument auto convert to Symbol) and conditional_value as String value for conditions.

## Contributing

1. Fork it ( http://github.com/<my-github-username>/destroyall/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
