
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rubyvis_charts/version"

Gem::Specification.new do |spec|
  spec.name          = "rubyvis_charts"
  spec.version       = RubyvisCharts::VERSION
  spec.authors       = ["Andriy Solonyna"]
  spec.email         = ["asolonyn@cisco.com"]

  spec.summary       = "Rubyvis charts"
  spec.description   = "Rubyvis charts"
  spec.homepage      = "https://github.com/Cisco-AMP/rubyvis_charts"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubyvis", "~> 0.6.1"
  spec.add_dependency 'activesupport'

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "nokogiri", "~> 1.10.4"
  spec.add_development_dependency "byebug", "~> 10.0"
end
