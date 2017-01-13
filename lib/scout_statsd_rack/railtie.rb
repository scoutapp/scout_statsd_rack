module ScoutStatsdRack
  class Railtie < Rails::Railtie
    initializer "scout_statsd_rack.insert_middleware" do |app|
      app.config.middleware.use ScoutStatsdRack::Middleware
    end
  end
end