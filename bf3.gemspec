# -*- encoding: utf-8 -*-
require File.expand_path('../lib/bf3/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Taylor Beseda"]
  gem.email         = ["tbeseda@gmail.com"]
  gem.description   = "Stats for Battlefield 3 from bf3stats.copm"
  gem.summary       = ""
  gem.homepage      = "http://github.com/tbeseda/bf3"

  gem.add_dependency "httparty"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "bf3"
  gem.require_paths = ["lib"]
  gem.version       = Bf3::VERSION
end
