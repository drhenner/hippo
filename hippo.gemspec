# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "hippo/version"

Gem::Specification.new do |s|
  s.name        = "hippo"
  s.version     = Hippo::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Robert Jackson", 'Jon Jackson']
  s.email       = ["robertj@promedicalinc.com"]
  s.homepage    = "http://rubygems.org/gems/hippo"
  s.summary     = %q{HIPAA Transaction Set Generator/Parser}
  s.description = %q{HIPAA Transaction Set Generator/Parser}

  s.rubyforge_project = "hippo"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
