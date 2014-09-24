# Destroyall GEM
Created by [Alexandr Basan]()
- (www.proalab.com)

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

Using destroy_all method you can set Model name as argument model.
Using destroy_all_with_conditions method you can set Model name as argument model, condition as condition (this argument auto convert to Symbol) and conditional_value as String value for conditions.
Example:

    $ destroy_all(user)
    $ destroy_all_with_conditions(user, status, inactive)

In first method gem destroy all records in table Users
In second method gem destroy all records in table Users where user status = inactive

Also you maybe need to create form for delete all records in your model

    <%= form_for(Destroyall.destroy_all(model), :html => {:method => 'delete'}) do |f| %>
        <%= f.submit "Delete" %>
    <% end %>

or you can use simple method without gem

    <%= form_for(User.destroy_all("last_login < '2004-04-04'"), :html => {:method => 'delete'}) do |f| %>
        <%= f.submit "Delete" %>
    <% end %>

If you need more information about methods using for gem work, please see rubydoc

    $ http://apidock.com/rails/ActiveRecord/Base/destroy_all/class

## Contributing

1. Fork it ( http://github.com/<my-github-username>/destroyall/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
