require "scout_statsd_rack/version"
require "scout_statsd_rack/railtie"
require "statsd-ruby"

module ScoutStatsdRack
  class Middleware
    attr_accessor :app

    def initialize(app)
      @app = app
    end

    def call(env)
      (status, headers, body), response_time = call_with_timing(env)
      statsd.timing("response", response_time)
      statsd.increment("response_codes.#{status.to_s.gsub(/\d{2}$/,'xx')}")

      # Rack response
      [status, headers, body]
    rescue Exception => exception
      statsd.increment("response_codes.5xx")
      raise
    end

    def call_with_timing(env)
      start = Time.now
      result = @app.call(env)
      [result, ((Time.now - start) * 1000).round]
    end

    def statsd
      @statsd ||= Statsd.new('localhost', 8125)
    end
  end
end
