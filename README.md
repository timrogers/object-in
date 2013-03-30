# Object#in?

A monkeypatch on Object which adds the instance method `in?`, which is
effectively the standard library `Array#include?` method with the subject
and object inverted i.e. so the object you're search for receives the method
call.

## Installation

Add this line to your application's Gemfile:

    gem 'object-in'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install object-in

## Usage

This adds to Object, so it will be available on *(essentially?)* everything.
It takes one parameter, the array you want to check for the object's inclusion
in.

```ruby
array = %w{yankee doodle doo}
"yankee".in? array # => true
"da".in? array # => false
yankee.in? array.join(" ") # => raises a TypeError excdption
```

* It returns true if the array passed in includes the object.
* It returns false if the array passed in doesn't include the object.
* It raises a TypeError exception if the passed in object isn't an Array

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
