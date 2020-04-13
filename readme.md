# ZoomRuby

A Rails Engine for implementing the Zoom Web SDK with a frontend in ruby.

Zoom has given us many SDKs which are open platform that allows third-party developers to build applications and integrations upon Zoom’s video-first unified communications platform. Leverage APIs, Webhooks and SDKs to build custom applications and super-power business with a powerful collaboration suite.

For more information about Saferpay API, please visit
[https://marketplace.zoom.us/docs/guides](https://marketplace.zoom.us/docs/guides)


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'zoom-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install zoom-ruby

## Usage

Following are brief instructions to create and setup a zoom developer account.


The Web SDK uses an API Key & Secret for authentication. Login to the Zoom Marketplace and [Create a JWT app](https://marketplace.zoom.us/docs/guides/getting-started/app-types/create-jwt-app) to get API Keys & Secrets.


Configure the credentials in zoom-ruby.rb in initializers as follows:

```
ZoomRuby.configure do |config|
  config.api_key = 'H6E7GIPCQsO-8A3DMIfY00'
  config.api_secret = '1JPVxwvsh625X1viYP7lT39wpBXWWdHqaf00'
end

```

For joining a meeting we need following parameters:
```
  @meeting_hash = {
    username: 'Test User',
    meeting_number: '6334102200',
    password: 'asdfghjkcvbn',
    leave_url: 'localhost:3000/home',
    role: 0
  }
```

Now we just need to add one line link_to in our view file or redirect to this path:
```
<%= link_to 'Join Now', join_path(@meeting_hash)%>

# OR

join_path(@meeting_hash)

```

Frfom here you will be redirected to a path in rails engine which will handle the call joining and getting signature for you.

Screenshots of after joining the meeting from Browser will be uploaded soon

You can refer to Zoom official website for more information

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nischay-dhiman/zoom-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SaferpayRuby project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/nischay-dhiman/zoom-ruby/blob/master/CODE_OF_CONDUCT.md).