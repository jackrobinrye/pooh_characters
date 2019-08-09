# PoohCharacters

Welcome to  the PoohCharacters gem! In this gem you will run ./bin/pooh-characters to run a CLI that will allow you to look at different Winnie the Pooh characters, get urls to their individual pages, and get a random quote from them.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pooh_characters'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pooh_characters

## Usage

Run the pooh-characters file by typing
    $ ./bin/pooh-characters
to open the CLI. In the CLI you will be prompted to pick a Winnie the Pooh character from a list. 
Type 'list' to list the characters again. 
Type the number corresponding to the character you want to choose, then press enter. 
Next, you will be asked if you want to get the url or a random quote from that character. 
As prompted, type 'quote' for a quote, or type 'url' for the url to that individual character's page. 
You will remain in the url/quote menu until you type 'exit' to exit to the previous menu.
You will remain in the character selection menu until you type 'exit' to exit.
Any input outside of expected parameters will result in a prompt to try again.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jackrobinrye/pooh_characters. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the PoohCharacters project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/jackrobinrye/pooh_characters/blob/master/CODE_OF_CONDUCT.md).
