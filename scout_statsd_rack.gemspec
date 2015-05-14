# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scout_statsd_rack/version'

Gem::Specification.new do |spec|
  spec.name          = "scout_statsd_rack"
  spec.version       = ScoutStatsdRack::VERSION
  spec.authors       = ["Mark Morris", "Derek Haynes"]
  spec.email         = ["support@scoutapp.com"]

  spec.summary       = %q{Basic Rack application monitoring with StatsD. }
  spec.homepage      = "https://scoutapp.com"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "statsd-ruby", "~> 1.2"

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
