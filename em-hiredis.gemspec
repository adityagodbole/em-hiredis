# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "em-hiredis/version"

Gem::Specification.new do |s|
  s.name        = "gilmour-em-hiredis"
  s.version     = EventMachine::Hiredis::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Martyn Loughran", "Aditya Godbole"]
  s.email       = ["aa@gdbl.me"]
  s.homepage    = "http://github.com/adityagodbole/em-hiredis"
  s.summary     = %q{Eventmachine redis client dependency for gilmour}
  s.description = %q{Eventmachine redis client using hiredis native parser}

  s.add_dependency 'eventmachine', '~> 1.0'
  s.add_dependency 'hiredis', '~> 0.5.0'

  s.add_development_dependency 'em-spec', '~> 0.2.5'
  s.add_development_dependency 'rspec', '~> 2.6.0'
  s.add_development_dependency 'rake'

  s.rubyforge_project = "em-hiredis"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
