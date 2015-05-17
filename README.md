# Scout StatsD Rack

The `scout_statsd_rack` gem instruments Ruby applications served by [Rack](http://rack.github.io/) with [StatsD](https://github.com/etsy/statsd/).
The gem is maintained by [Scout](https://scoutapp.com) for our [hosted StatsD](https://scoutapp.com/statsd) service but is compatible with any StatsD collector.

![rails app monitoring](https://dl.dropboxusercontent.com/u/468982/blog/rack_dash.png)

## Reported Metrics

The following metrics are reported:

* Response code rates (2XX,3XX,4XX,5XX,etc)
* Response time
* Request throughput

## Rails Installation

Add this line to your application's Gemfile:

```ruby
gem 'scout_statsd_rack'
```

And then execute:

    $ bundle

That's it! The gem uses a Railtie that automatically includes the middleware instrumentation into your app.

## Non-Rails Installation

Add this line to your application's Gemfile:

```ruby
gem 'scout_statsd_rack'
```

And then execute:

    $ bundle

Use the `ScoutStatsdRack` middleware:

    use ScoutStatsdRack::Middleware

## Using with Scout

Just install the [Scoutd](http://help.scoutapp.com/docs/agent) agent on the host(s) serving the app to see the Rack metrics in the Scout UI.

## Scope

This gem is laser-focused on Rack-related metrics. Other `scout_statsd_X` gems instrument different areas of your code.

## Questions? Feedback?

[Create an issue](https://github.com/scoutapp/scout_statsd_rack/issues) or shoot an email to support@scoutapp.com.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/scout_statsd_rack/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
